#!/usr/bin/env python3
"""Convert the project's Hebrew Markdown reports into print-ready RTL HTML.

The report is Hebrew prose mixed with English identifiers, Verilog snippets and
ASCII diagrams. A generic Markdown converter renders the whole page LTR, which
misaligns the Hebrew paragraphs and puts the first table column on the wrong
side. This script emits RTL HTML while keeping code blocks LTR, and carries A4
print rules so the output can be saved straight to PDF from a browser.

Usage:
    py python/md_to_rtl_html.py docs/PROJECT_REPORT_HE.md [more.md ...]
"""

import html
import re
import sys
from pathlib import Path

CSS = """
@page { size: A4; margin: 13mm 12mm 12mm 12mm; }

html { direction: rtl; }

body {
    font-family: "Segoe UI", "Arial", "Helvetica Neue", sans-serif;
    font-size: 9.6pt;
    line-height: 1.45;
    color: #1a1a1a;
    max-width: 190mm;
    margin: 0 auto;
    padding: 4mm 3mm;
    text-align: right;
}

h1 {
    font-size: 17pt;
    color: #0b3d6b;
    border-bottom: 2.5px solid #0b3d6b;
    padding-bottom: 4px;
    margin: 0 0 3px 0;
    line-height: 1.25;
}

h2 {
    font-size: 12.5pt;
    color: #0b3d6b;
    border-bottom: 1.2px solid #c3d4e3;
    padding-bottom: 3px;
    margin: 13px 0 6px 0;
    break-after: avoid;
    page-break-after: avoid;
}

h3 {
    font-size: 10.5pt;
    color: #16537e;
    margin: 9px 0 4px 0;
    break-after: avoid;
    page-break-after: avoid;
}

p { margin: 4px 0; }

/* Latin identifiers, Verilog and ASCII diagrams must stay left-to-right. */
pre {
    direction: ltr;
    text-align: left;
    background: #f6f8fa;
    border: 1px solid #d8dee4;
    border-right: 3px solid #0b3d6b;
    border-radius: 4px;
    padding: 6px 9px;
    font-family: Consolas, "Courier New", monospace;
    font-size: 7.8pt;
    line-height: 1.32;
    overflow-x: auto;
    white-space: pre;
    break-inside: avoid;
    page-break-inside: avoid;
}

code {
    direction: ltr;
    unicode-bidi: embed;
    font-family: Consolas, "Courier New", monospace;
    font-size: 9.2pt;
    background: #eef1f4;
    border: 1px solid #dde2e7;
    border-radius: 3px;
    padding: 0 3px;
}

pre code { background: none; border: none; padding: 0; font-size: inherit; }

table {
    direction: rtl;
    border-collapse: collapse;
    width: 100%;
    margin: 6px 0;
    font-size: 8.7pt;
    line-height: 1.35;
}

/* Tables may split across pages; repeat the header row when they do. */
thead { display: table-header-group; }
tr { break-inside: avoid; page-break-inside: avoid; }

th, td {
    border: 1px solid #c3d4e3;
    padding: 2.5px 5px;
    text-align: right;
    vertical-align: top;
}

th { background: #e8eff5; color: #0b3d6b; font-weight: 600; }
tr:nth-child(even) td { background: #fafcfd; }

/* Capped height keeps wide screenshots from eating whole pages. */
img {
    display: block;
    max-width: 100%;
    max-height: 56mm;
    width: auto;
    height: auto;
    margin: 6px auto;
    border: 1px solid #d8dee4;
    border-radius: 3px;
    break-inside: avoid;
    page-break-inside: avoid;
}

blockquote {
    margin: 6px 0;
    padding: 5px 10px;
    background: #fff8e6;
    border-right: 3px solid #e0a800;
    border-radius: 3px;
}

blockquote p { margin: 2px 0; }

ul, ol { margin: 4px 0; padding-right: 20px; padding-left: 0; }
li { margin: 1.5px 0; }

hr { border: none; border-top: 1px solid #d8dee4; margin: 9px 0; }

a { color: #16537e; text-decoration: none; border-bottom: 1px dotted #16537e; }

strong { color: #0b3d6b; }

@media print {
    body { padding: 0; max-width: none; }
    a { color: #1a1a1a; border-bottom: none; }
    h1 { break-after: avoid; page-break-after: avoid; }
}
"""

PAGE = """<!DOCTYPE html>
<html lang="he" dir="rtl">
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>{title}</title>
<style>{css}</style>
</head>
<body>
{body}
</body>
</html>
"""


def inline(text):
    """Render inline Markdown. Code spans are shielded from later passes."""
    shield = []

    def stash(match):
        shield.append(html.escape(match.group(1)))
        return f"\x00{len(shield) - 1}\x00"

    text = re.sub(r"`([^`]+)`", stash, text)
    text = html.escape(text)

    text = re.sub(r"!\[([^\]]*)\]\(([^)]+)\)", r'<img src="\2" alt="\1">', text)
    text = re.sub(r"\[([^\]]+)\]\(([^)]+)\)", r'<a href="\2">\1</a>', text)
    text = re.sub(r"\*\*([^*]+)\*\*", r"<strong>\1</strong>", text)

    return re.sub(r"\x00(\d+)\x00", lambda m: f"<code>{shield[int(m.group(1))]}</code>", text)


def split_row(line):
    return [c.strip() for c in line.strip().strip("|").split("|")]


def alignments(sep_cells):
    out = []
    for cell in sep_cells:
        if cell.startswith(":") and cell.endswith(":"):
            out.append(" style=\"text-align:center\"")
        elif cell.endswith(":"):
            out.append(" style=\"text-align:right\"")
        elif cell.startswith(":"):
            out.append(" style=\"text-align:left\"")
        else:
            out.append("")
    return out


def is_table_separator(line):
    return bool(re.fullmatch(r"\|[\s:|-]+\|", line.strip())) and "-" in line


def convert(md):
    lines = md.split("\n")
    out = []
    i = 0
    n = len(lines)

    while i < n:
        line = lines[i]
        stripped = line.strip()

        if not stripped:
            i += 1
            continue

        # The source files carry a <style> block so that Markdown previewers
        # render RTL too. This page ships its own CSS, so drop it.
        if stripped.lower().startswith("<style"):
            while i < n and "</style>" not in lines[i].lower():
                i += 1
            i += 1
            continue

        # Fenced code block -- emitted verbatim, LTR.
        if stripped.startswith("```"):
            i += 1
            block = []
            while i < n and not lines[i].strip().startswith("```"):
                block.append(html.escape(lines[i]))
                i += 1
            i += 1
            out.append("<pre><code>" + "\n".join(block) + "</code></pre>")
            continue

        # Horizontal rule (must be checked before table separator).
        if re.fullmatch(r"-{3,}", stripped):
            out.append("<hr>")
            i += 1
            continue

        if stripped.startswith("#"):
            level = len(stripped) - len(stripped.lstrip("#"))
            out.append(f"<h{level}>{inline(stripped[level:].strip())}</h{level}>")
            i += 1
            continue

        # Table: a pipe row followed by a separator row.
        if stripped.startswith("|") and i + 1 < n and is_table_separator(lines[i + 1]):
            header = split_row(stripped)
            align = alignments(split_row(lines[i + 1]))
            align += [""] * (len(header) - len(align))
            i += 2

            rows = []
            while i < n and lines[i].strip().startswith("|"):
                rows.append(split_row(lines[i]))
                i += 1

            buf = ["<table>", "<thead><tr>"]
            for idx, cell in enumerate(header):
                buf.append(f"<th{align[idx]}>{inline(cell)}</th>")
            buf.append("</tr></thead><tbody>")
            for row in rows:
                buf.append("<tr>")
                for idx, cell in enumerate(row):
                    a = align[idx] if idx < len(align) else ""
                    buf.append(f"<td{a}>{inline(cell)}</td>")
                buf.append("</tr>")
            buf.append("</tbody></table>")
            out.append("".join(buf))
            continue

        if stripped.startswith(">"):
            block = []
            while i < n and lines[i].strip().startswith(">"):
                block.append(lines[i].strip().lstrip(">").strip())
                i += 1
            out.append("<blockquote><p>" + inline(" ".join(block)) + "</p></blockquote>")
            continue

        if re.match(r"[-*]\s+", stripped) or re.match(r"\d+\.\s+", stripped):
            ordered = bool(re.match(r"\d+\.\s+", stripped))
            tag = "ol" if ordered else "ul"
            items = []
            pattern = r"\d+\.\s+" if ordered else r"[-*]\s+"
            while i < n and re.match(pattern, lines[i].strip()):
                items.append(re.sub("^" + pattern, "", lines[i].strip()))
                i += 1
            out.append(f"<{tag}>" + "".join(f"<li>{inline(x)}</li>" for x in items) + f"</{tag}>")
            continue

        # Paragraph: gather until a blank line or a block-level construct.
        para = []
        while i < n and lines[i].strip():
            s = lines[i].strip()
            if s.startswith(("#", "|", ">", "```")) or re.fullmatch(r"-{3,}", s):
                break
            if re.match(r"[-*]\s+", s) or re.match(r"\d+\.\s+", s):
                break
            para.append(s)
            i += 1

        joined = " ".join(para)
        # A standalone image gets its own block rather than a wrapping <p>.
        if re.fullmatch(r"!\[[^\]]*\]\([^)]+\)", joined):
            out.append(inline(joined))
        else:
            out.append(f"<p>{inline(joined)}</p>")

    return "\n".join(out)


def main(argv):
    if len(argv) < 2:
        print(__doc__)
        return 1

    for arg in argv[1:]:
        src = Path(arg)
        if not src.is_file():
            print(f"skip (not found): {src}")
            continue

        md = src.read_text(encoding="utf-8")
        heading = re.search(r"^#\s+(.+)$", md, re.MULTILINE)
        title = heading.group(1).strip() if heading else src.stem

        dst = src.with_suffix(".html")
        dst.write_text(
            PAGE.format(title=html.escape(title), css=CSS, body=convert(md)),
            encoding="utf-8",
        )
        print(f"{src}  ->  {dst}")

    return 0


if __name__ == "__main__":
    sys.exit(main(sys.argv))
