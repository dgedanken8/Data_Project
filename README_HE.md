# Data Project — Zynq DDR Data Logger

![FPGA](https://img.shields.io/badge/FPGA-Zybo%20Z7--20-blue)
![HDL](https://img.shields.io/badge/HDL-Verilog-orange)
![Tool](https://img.shields.io/badge/Tool-Vivado-green)
![SoC](https://img.shields.io/badge/SoC-Zynq--7000-purple)
![Status](https://img.shields.io/badge/Status-In%20Development-yellow)

> **Data Project** הוא פרויקט FPGA / SoC המפותח בצורה הדרגתית על כרטיס **Zybo Z7-20**.
> הפרויקט מדגים מסלול נתונים מלא, החל ממודולי RTL מותאמים אישית ב-Verilog, דרך יצירת Packet, אחסון ב-FIFO, העברה באמצעות AXI-Stream, אינטגרציה עם AXI DMA וזיכרון DDR, ועד אימות הנתונים באמצעות Vitis C.

---

## תוכן עניינים

* [סקירת הפרויקט](#סקירת-הפרויקט)
* [כלים ופלטפורמה](#כלים-ופלטפורמה)
* [תרשים בלוקים של המערכת](#תרשים-בלוקים-של-המערכת)
* [ארכיטקטורת המערכת](#ארכיטקטורת-המערכת)
* [מאפייני התכנון המרכזיים](#מאפייני-התכנון-המרכזיים)
* [מבנה ה-Data Packet](#מבנה-ה-data-packet)
* [שלבי הפיתוח](#שלבי-הפיתוח)
* [מבנה הפרויקט](#מבנה-הפרויקט)
* [תיעוד](#תיעוד)
* [תוכנית האימות](#תוכנית-האימות)
* [המטרה-הסופית](#המטרה-הסופית)
* [יוצר-הפרויקט](#יוצר-הפרויקט)

---

## סקירת הפרויקט

מטרת הפרויקט היא לבנות מערכת FPGA / SoC מלאה לרישום והעברת נתונים (**Data Logger**).

המערכת מתחילה ממקור נתונים מבוקר בתוך ה-FPGA.
הנתונים נארזים בתוך Packet בעל מבנה מוגדר, נשמרים ב-FIFO, מועברים באמצעות AXI-Stream ובהמשך נכתבים לזיכרון DDR באמצעות AXI DMA. לבסוף, הנתונים יאומתו באמצעות תוכנה הרצה על מעבד ה-ARM בתוך ה-Zynq Processing System.

הפרויקט נבנה בצורה הדרגתית ומודולרית, כאשר כל בלוק נבנה ונבדק בנפרד לפני חיבורו למערכת המלאה.

---

## כלים ופלטפורמה

* **Target Board:** Zybo Z7-20
* **FPGA / SoC:** Xilinx Zynq-7000
* **Hardware Design Tool:** Vivado
* **Hardware Description Language:** Verilog HDL
* **Software Tool:** Vitis C
* **Version Control:** Git / GitHub
* **Future Data Analysis:** Python / CSV / Graph

---

## תרשים בלוקים של המערכת

<p align="center">
  <img src="images/data_project_block_diagram.png" alt="Data Project Block Diagram" width="1000">
</p>

<p align="center">
  <em>High-level architecture of the planned Data Project system.</em>
</p>

> התרשים מציג את הארכיטקטורה הסופית המתוכננת של ה-Data Project.
> המימוש מתבצע בהדרגה בהתאם לשלבי הפיתוח של הפרויקט.

---

## ארכיטקטורת המערכת

ארכיטקטורת המערכת הסופית המתוכננת היא:

```text
Data Generator / Communication Receiver
        ↓
Packet Builder FSM
        ↓
Sync FIFO
        ↓
Async FIFO / CDC
        ↓
AXI-Stream Master
        ↓
AXI DMA
        ↓
DDR Memory
        ↓
Vitis C Verification
        ↓
UART Terminal / Python / CSV / Graph
```

במימוש הראשוני נעשה שימוש ב-**Data Generator** פנימי.

בשלב מתקדם יותר ניתן יהיה להחליף את מקור הנתונים הפנימי בממשק תקשורת אמיתי, לדוגמה **UART** או **SPI**.

---

## מאפייני התכנון המרכזיים

### 1. Modular RTL Design

המערכת בנויה ממודולי RTL נפרדים.

לכל בלוק תפקיד מוגדר, Testbench משלו ותהליך Verification עצמאי.

מודולי ה-RTL המרכזיים כוללים:

* Data Generator
* Packet Builder FSM
* Sync FIFO
* AXI-Stream Master
* Async FIFO / CDC
* Full RTL Integration Testbench
* Custom IP blocks נפרדים עבור Vivado Block Design

---

### 2. Structured Packet Format

הפרויקט אינו מעביר ערכים אקראיים ללא מבנה.

הנתונים נארזים במבנה מוגדר:

```text
Header → Length → Data Words → Checksum
```

מבנה זה מאפשר לעקוב אחר הנתונים ולאמת אותם בצורה ברורה בסימולציה, ובהמשך בזיכרון DDR ובתוכנה.

---

### 3. Testbench-Based Verification

כל מודול RTL נבדק בנפרד באמצעות Testbench ייעודי לפני חיבורו לבלוק הבא.

לאחר השלמת הסימולציות של המודולים הבודדים, המודולים שנבדקו חוברו ב-Full RTL Integration Testbench.

בבדיקה זו אומת מסלול הנתונים המלא:

```text
Data Generator
      ↓
Packet Builder FSM
      ↓
Sync FIFO
      ↓
AXI-Stream Master
```

ה-Full RTL Integration עבר בהצלחה לפני המעבר ל-IP Packaging ול-Vivado Block Design.

גישה זו מאפשרת לבודד תקלות בשלבים מוקדמים ולבצע Integration בצורה הדרגתית.

---

### 4. Custom IP Packaging and Block Design

לאחר השלמת ה-RTL Verification, מודולי ה-RTL נארזו כ-Vivado Custom IP blocks נפרדים.

ה-Custom IPs נוספו ל-IP Repository וחוברו ב-Vivado Block Design.

ה-Block Design עבר Validation, נוצר HDL Wrapper והמערכת עברה Synthesis בהצלחה.

גישה זו מאפשרת להציג את ארכיטקטורת המערכת בצורה ברורה ולחבר את הלוגיקה המותאמת אישית למערכת ה-Zynq.

---

### 5. AXI-Stream and AXI DMA Integration

ה-AXI-Stream Master שפותח בפרויקט אחראי להעברת המידע מה-FIFO לכיוון ה-AXI DMA.

בשלב הנוכחי מתבצעת אינטגרציה בין ה-Custom RTL, ה-AXI DMA, ה-Zynq Processing System וזיכרון ה-DDR.

AXI DMA מאפשר להעביר את הנתונים מה-Programmable Logic לזיכרון DDR בצורה יעילה, ללא צורך בכך שה-CPU יעתיק כל מילה בנפרד.

---

### 6. DDR and Software Verification

לאחר השלמת אינטגרציית ה-AXI DMA וה-DDR, ה-Packet יישמר בזיכרון DDR.

תוכנית Vitis C תקרא את ה-DDR buffer ותאמת:

* Header
* Length
* Data order
* Checksum
* PASS / FAIL result

---

### 7. Clock Domain Crossing

לאחר השלמת מסלול ה-DMA וה-DDR, התכנון יורחב באמצעות Async FIFO לצורך Clock Domain Crossing בטוח.

שלב זה יאפשר עבודה נכונה בין חלקים במערכת הפועלים עם Clock Domains שונים.

---

## מבנה ה-Data Packet

המערכת משתמשת במבנה Packet פשוט:

```text
Word 0: Header
Word 1: Length
Word 2: Data[0]
Word 3: Data[1]
...
Word N: Data[N-1]
Word N+1: Checksum
```

דוגמת הבדיקה הראשונית:

```text
Header   = 0xA5A50001
Length   = 6
Data     = 1, 7, 8, 3, 6, 3
Checksum = 28 = 0x0000001C
```

ה-Packet הצפוי:

```text
Word 0: 0xA5A50001
Word 1: 0x00000006
Word 2: 0x00000001
Word 3: 0x00000007
Word 4: 0x00000008
Word 5: 0x00000003
Word 6: 0x00000006
Word 7: 0x00000003
Word 8: 0x0000001C
```

ה-Protocol המלא מתועד בקובץ:

```text
docs/data_protocol.md
```

---

## שלבי הפיתוח

הפרויקט מפותח בהתאם לשלבים הבאים:

| Stage | Name                                         |     Status     |
| ----: | -------------------------------------------- | :------------: |
|     0 | GitHub + Project Structure                   |     ✅ Done     |
|     1 | Data Protocol                                |     ✅ Done     |
|     2 | Data Generator + Testbench                   |     ✅ Done     |
|     3 | Packet Builder FSM + Testbench               |     ✅ Done     |
|     4 | Sync FIFO + Testbench                        |     ✅ Done     |
|     5 | AXI-Stream Master + Testbench                |     ✅ Done     |
|     6 | Full RTL Integration Simulation              |     ✅ Done     |
|     7 | Custom IP Packaging + Vivado Block Design    |     ✅ Done     |
|     8 | AXI DMA + Zynq PS + DDR Hardware Integration | 🔧 In Progress |
|     9 | Vitis C Verification                         |    ⏳ Planned   |
|    10 | Async FIFO + CDC + Testbench                 |    ⏳ Planned   |
|    11 | Full Integration with CDC + DMA + DDR        |    ⏳ Planned   |
|    12 | ILA + Vivado Reports                         |    ⏳ Planned   |
|    13 | Python CSV / Graph                           |    ⏳ Planned   |
|    14 | UART or SPI Extension                        |    ⏳ Planned   |
|    15 | Portfolio Polish                             |    ⏳ Planned   |

למעקב מפורט אחר ההתקדמות ניתן לעיין ב-Project Checklist שבתיקיית התיעוד.

**Current Progress:** שלבים **0–7 הושלמו במלואם**.
הפרויקט נמצא כעת ב-**Stage 8 — AXI DMA + Zynq PS + DDR Hardware Integration**.

---

## מבנה הפרויקט

```text
Data_Project/
├── docs/       Project documentation, work plan, checklist and protocol
├── images/     Block diagrams, waveforms and screenshots
├── ip_repo/    Vivado custom IP repository
├── python/     Python scripts for CSV and graphs
├── reports/    Timing, utilization and simulation reports
├── rtl/        Verilog RTL source files
├── tb/         Testbench files
├── vitis/      Vitis C software
├── vivado/     Vivado project files and block design notes
└── README.md
```

---

## תיעוד

קבצי התיעוד המרכזיים:

* **Work Plan:** `docs/work_plan.md`
* **Data Protocol:** `docs/data_protocol.md`
* **Project Checklist:** `docs/project_checklist.md`
* **Hebrew Checklist PDF:** `docs/data_project_checklist_hebrew.pdf`
* **English Checklist PDF:** `docs/data_project_checklist_english.pdf`
* **Block Diagram:** `images/data_project_block_diagram.png`
* **Full Project Plan:** `docs/work_plan_he.pdf`

בנוסף, תוצאות סימולציה, Waveforms, screenshots ודוחות Vivado נשמרים כחלק מה-Repository לצורך תיעוד תהליך הפיתוח והבדיקות.

---

## תוכנית האימות

הפרויקט נבדק במספר רמות:

### Behavioral Simulation

כל מודול RTL נבדק בנפרד באמצעות Testbench ייעודי.

השלב הושלם עבור:

* Data Generator
* Packet Builder FSM
* Sync FIFO
* AXI-Stream Master

### Full RTL Simulation

בוצעה Full RTL Integration Simulation לפני המעבר ל-Vivado Block Design, AXI DMA ו-DDR.

בבדיקה חוברה השרשרת:

```text
Data Generator
      ↓
Packet Builder FSM
      ↓
Sync FIFO
      ↓
AXI-Stream Master
```

הסימולציה אימתה Packet מלא בן 9 מילים, כולל Header, Length, שישה Data Words ו-Checksum.

בנוסף אומת כי `axis_tlast` מופעל על המילה האחרונה של ה-Packet.

ה-Full RTL Integration הסתיים בהצלחה.

### Vivado Custom IP and Block Design

כל מודול RTL שנבדק נארז כ-Vivado Custom IP נפרד.

ה-Custom IP blocks חוברו ב-Block Design, בוצע Validate Design, נוצר HDL Wrapper והמערכת עברה Synthesis.

### Vivado Hardware Integration

שלב זה נמצא כעת בתהליך.

ה-Custom AXI-Stream output משולב עם Zynq PS, AXI DMA וזיכרון DDR ב-Vivado לצורך Hardware Integration ו-Bring-Up על כרטיס ה-Zybo Z7-20.

### Vitis C Verification

לאחר השלמת אינטגרציית החומרה, תוכנית C תשלוט ב-DMA, תקרא את ה-DDR buffer ותאמת את ה-Packet שהתקבל.

### Hardware Debug

בהמשך ישולב ILA לצורך בדיקת אותות פנימיים של ה-FPGA בזמן ריצה על חומרה אמיתית.

### Python Visualization

Python ישמש בהמשך לייצוא נתונים, יצירת CSV והפקת Graphs.

---

## המטרה הסופית

המטרה הסופית היא להדגים מסלול נתונים מלא במערכת FPGA / SoC, החל מתכנון RTL ועד לזיכרון DDR ואימות באמצעות תוכנה.

הפרויקט מיועד להדגים יכולת ב:

* תכנון Custom Verilog RTL
* כתיבת Testbenches
* בניית FSM-based control logic
* שימוש ב-FIFO buffering
* עבודה עם AXI-Stream
* Packaging של RTL כ-Vivado Custom IP
* בנייה ואימות של Vivado Block Design
* אינטגרציה עם AXI DMA ו-DDR
* כתיבת Vitis C verification software
* עבודה עם Clock Domain Crossing
* שימוש ב-ILA לצורך Hardware Debug
* תיעוד וניהול פרויקט בצורה מסודרת באמצעות Git / GitHub

---

## סיכום

Data Project הוא פרויקט FPGA / SoC מובנה המתפתח בהדרגה ממודולי RTL בסיסיים למערכת Data Logger מלאה המבוססת על Zynq.

הדגש בפרויקט הוא לא רק לגרום למערכת לעבוד, אלא גם להבין, לבדוק, לבצע Integration ולתעד בצורה ברורה כל שלב בתהליך הפיתוח.

---

## יוצר הפרויקט

Created by **Dvir Gedanken** as an FPGA / SoC portfolio project.
