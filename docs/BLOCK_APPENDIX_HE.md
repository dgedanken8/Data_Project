<style>
body, .markdown-body, .vscode-body { direction: rtl; text-align: right; }
th, td { text-align: right; }
pre, code, pre * { direction: ltr; text-align: left; unicode-bidi: embed; }
ul, ol { padding-right: 24px; padding-left: 0; }
blockquote { border-right: 3px solid #e0a800; border-left: none; padding-right: 12px; }
</style>

# נספח בלוקים — Data Project
## מדריך בלוק-אחר-בלוק לדיאגרמה המלאה של המערכת

**Dvir Gedanken** · Zybo Z7-20 · Vivado 2019.1

> נספח זה סורק **כל בלוק** שקיים בפועל ב-Block Design הסופי (שלב 8), לפי סדר הזרימה — ממקור הנתונים בלוגיקה המתוכנתת ועד ל-DDR. לכל בלוק: תפקיד, כניסות/יציאות עם רוחב הסיגנל, מה הוא מייצג, ולאן הוא מתחבר בפועל (מבוסס על קובץ ה-Block Design `data_project_bd.bd` עצמו, לא על תיאור כללי). מיועד להתאחד עם הדוח הראשי בהמשך.

---

## תרשים הבלוקים המלא

![Block Design מלא — Data Project](../images/block_design_validated.png)

**מקרא לפי סדר הזרימה:**

```text
BTN0 (K18) ─ start ─┬──▶ ① Data Generator ──▶ ② Packet Builder FSM ──▶ ③ Sync FIFO ──▶ ④ AXI-Stream Master
                    │                                                                        │
                    │                                                                        ▼ AXI4-Stream
                    │                                                                  ⑤ AXI DMA (S2MM)
                    │                                                                   │            │
                    │                                                     S_AXI_LITE ▲  │            │ M_AXI_S2MM
                    │                                                                │  │            ▼
                    │                                          ⑦ AXI Interconnect Ctrl │      ⑥ AXI Interconnect (Data)
                    │                                                                │  │            │
                    └────────────────────────────────────────────────────────────────┴──┴────────────┤
                                                                                                        ▼
                                                                            ⑧ Zynq Processing System 7 (S_AXI_HP0 → DDR)
                                                                                        ▲
                                                                            ⑨ Processor System Reset
                                                                                        ▲
                                                                      ⑩⑪ xlconstant_0 / xlconstant_1
```

עשרת הבלוקים הפעילים ממוספרים ①–⑪ (אחד עשר בפועל, כולל שני קבועים) ונסקרים להלן בסדר הזה.

---

## ① Data Generator — `data_generator_0`

**סוג:** Custom RTL IP · `xilinx.com:user:data_generator:1.0` · מקור: `rtl/data_generator.v`

**תפקיד במערכת:** נקודת ההתחלה של מסלול הנתונים. מייצר בתוך ה-FPGA רצף נתונים קבוע וידוע מראש (`1, 7, 8, 3, 6, 3`), במקום להסתמך על ממשק קלט חיצוני. זהו "חתימת הבדיקה" שמלווה את המערכת לאורך כל השלבים הבאים.

### כניסות

| סיגנל | רוחב | מקור בפועל ב-Block Design | תפקיד |
|---|---:|---|---|
| `clk` | 1 | `processing_system7_0/FCLK_CLK0` (50 MHz) | שעון המערכת |
| `rst` | 1 | `proc_sys_reset_0/peripheral_reset` | איפוס סינכרוני **Active-High** |
| `start` | 1 | פורט חיצוני `start` ← BTN0 (פין K18) | פקודת התחלה |
| `data_ready` | 1 | `packet_builder_FSM_0/data_ready` | אישור מהצרכן (Backpressure) |

### יציאות

| סיגנל | רוחב | יעד בפועל ב-Block Design | תפקיד |
|---|---:|---|---|
| `data_out` | 32 | `packet_builder_FSM_0/data_in` | מילת הנתונים הנוכחית |
| `data_valid` | 1 | `packet_builder_FSM_0/data_valid` | `data_out` תקף |
| `done` | 1 | לא מחווט ב-Block Design (פנימי לשלב זה) | כל 6 המילים נשלחו |

**מחובר אל:** `packet_builder_FSM_0` בלבד — זהו הבלוק היחיד שצורך את הפלט של ה-Generator.

**נקודת מפתח:** `data_ready` אינו קבוע — הוא מגיע **מה-FSM שאחריו**, ולכן ה-Generator מקדם נתון רק כשה-FSM אכן מוכן לקלוט (ראו בלוק ②).

---

## ② Packet Builder FSM — `packet_builder_FSM_0`

**סוג:** Custom RTL IP · `xilinx.com:user:packet_builder_FSM:1.0` · מקור: `rtl/packet_builder_FSM.v`

**תפקיד במערכת:** מכונת המצבים שהופכת את זרם המילים הגולמי ל-Packet מובנה: Header → Length → Data ×6 → Checksum. זהו הבלוק היחיד במערכת שמחשב לוגיקה (חיבור מצטבר ל-Checksum) ולא רק מעביר נתונים.

### כניסות

| סיגנל | רוחב | מקור בפועל | תפקיד |
|---|---:|---|---|
| `clk` | 1 | `FCLK_CLK0` | שעון המערכת |
| `rst` | 1 | `proc_sys_reset_0/peripheral_reset` | איפוס Active-High |
| `start` | 1 | פורט חיצוני `start` ← BTN0 | פקודת התחלה — **אותו אות** שמזין גם את ה-Generator |
| `data_valid` | 1 | `data_generator_0/data_valid` | הנתון מה-Generator תקף |
| `data_in` | 32 | `data_generator_0/data_out` | מילת הנתונים הנכנסת |

### יציאות

| סיגנל | רוחב | יעד בפועל | תפקיד |
|---|---:|---|---|
| `packet_word_out` | 32 | `sync_fifo_0/din` | המילה היוצאת (Header/Length/Data/Checksum) |
| `packet_valid` | 1 | `sync_fifo_0/wr_en` | המילה היוצאת תקפה — **מפעיל כתיבה ל-FIFO ישירות** |
| `packet_done` | 1 | `axi_stream_master_0/start` | ה-Packet כולו נכתב ל-FIFO — **מפעיל את שלב ④** |
| `data_ready` | 1 | `data_generator_0/data_ready` | Backpressure חזרה אל ה-Generator (רק במצב `SEND_DATA`) |

**מחובר אל:** נכנס מ-① (`data_generator_0`), יוצא אל ③ (`sync_fifo_0`) בנתונים ואל ④ (`axi_stream_master_0`) בבקרה בלבד (`packet_done`).

**נקודת מפתח:** `packet_valid` מחובר **ישירות** ל-`wr_en` של ה-FIFO ללא הגנת `!full` בחומרה (קיימת רק ב-Testbench). ראו הערה בדוח הראשי, סעיף מגבלות.

---

## ③ Sync FIFO — `sync_fifo_0`

**סוג:** Custom RTL IP · `xilinx.com:user:sync_fifo:1.0` · מקור: `rtl/sync_fifo.v` · פרמטרים: `DATA_WIDTH=32`, `DEPTH=16`, `ADDR_WIDTH=4`

**תפקיד במערכת:** חוצץ בין ה-FSM שכותב את ה-Packet ברצף צמוד ובין ה-AXI-Stream Master שמוציא אותו בקצב תלוי-`tready`. מנתק את שני קצבי השעון הלוגיים זה מזה.

### כניסות

| סיגנל | רוחב | מקור בפועל | תפקיד |
|---|---:|---|---|
| `clk` | 1 | `FCLK_CLK0` | שעון המערכת |
| `rst` | 1 | `proc_sys_reset_0/peripheral_reset` | איפוס Active-High |
| `wr_en` | 1 | `packet_builder_FSM_0/packet_valid` | בקשת כתיבה |
| `rd_en` | 1 | `axi_stream_master_0/fifo_rd_en` | בקשת קריאה |
| `din` | 32 | `packet_builder_FSM_0/packet_word_out` | הנתון להכנסה |

### יציאות

| סיגנל | רוחב | יעד בפועל | תפקיד |
|---|---:|---|---|
| `dout` | 32 | `axi_stream_master_0/fifo_dout` | הנתון שנקרא (רגיסטרי — זמין מחזור אחד אחרי `rd_en`) |
| `full` | 1 | **לא מחווט ב-Block Design** | דגל FIFO מלא — קיים ברמת ה-RTL, לא נצרך בחומרה |
| `empty` | 1 | `axi_stream_master_0/fifo_empty` | דגל FIFO ריק |
| `count[4:0]` | 5 | לא מחווט | תפוסה נוכחית |
| `overflow` | 1 | לא מחווט | דגל שגיאת כתיבה ל-FIFO מלא |
| `underflow` | 1 | לא מחווט | דגל שגיאת קריאה מ-FIFO ריק |

**מחובר אל:** נכנס מ-② (`packet_builder_FSM_0`), יוצא אל ④ (`axi_stream_master_0`).

**נקודת מפתח:** רוב יציאות הדיבוג (`full`, `count`, `overflow`, `underflow`) **קיימות ב-RTL אך אינן מחווטות ב-Block Design הנוכחי** — הן נבדקו ב-Testbench (שלב 4) אך אינן נראות בזמן ריצה על החומרה. מועמדות טבעיות לחיבור ל-ILA בשלב 12.

---

## ④ AXI-Stream Master — `axi_stream_master_0`

**סוג:** Custom RTL IP · `xilinx.com:user:axi_stream_master:1.0` · מקור: `rtl/axi_stream_master.v` · פרמטר: `PACKET_WORDS=9`

**תפקיד במערכת:** הגשר בין הלוגיקה המותאמת אישית לתשתית ה-Xilinx. ממיר את ממשק ה-FIFO הפנימי לפרוטוקול **AXI4-Stream** תקני, המוכר ל-AXI DMA.

### כניסות

| סיגנל | רוחב | מקור בפועל | תפקיד |
|---|---:|---|---|
| `clk` | 1 | `FCLK_CLK0` | שעון המערכת |
| `rst` | 1 | `proc_sys_reset_0/peripheral_reset` | איפוס Active-High |
| `start` | 1 | `packet_builder_FSM_0/packet_done` | מתחיל רק **לאחר** שה-Packet כולו נכתב ל-FIFO |
| `fifo_dout` | 32 | `sync_fifo_0/dout` | הנתון מה-FIFO |
| `fifo_empty` | 1 | `sync_fifo_0/empty` | FIFO ריק — עוצר את השידור |
| `axis_tready` | 1 | `axi_dma_0/S_AXIS_S2MM/TREADY` (חלק מממשק ה-Stream) | ה-DMA מוכן לקלוט |

### יציאות

| סיגנל | רוחב | יעד בפועל | תפקיד |
|---|---:|---|---|
| `fifo_rd_en` | 1 | `sync_fifo_0/rd_en` | בקשת קריאה מה-FIFO |
| `axis` (ממשק) | — | `axi_dma_0/S_AXIS_S2MM` | ממשק AXI4-Stream מלא (`tdata`, `tvalid`, `tlast`, `tkeep`) |
| `busy` | 1 | לא מחווט | אינדיקציית שידור פעיל |
| `done` | 1 | לא מחווט | אינדיקציית סיום שידור |
| `debug_state[3:0]` | 4 | לא מחווט | מצב ה-FSM הפנימי — **מוכן לחיבור ILA** |

**מחובר אל:** נכנס מ-③ (`sync_fifo_0`) ומ-② (`packet_builder_FSM_0`, בקרה), יוצא אל ⑤ (`axi_dma_0`) — **החיבור היחיד במערכת שהוא ממשק AXI רשמי (Interface Net) ולא סיגנלים בודדים.**

**נקודת מפתח:** זהו הבלוק **האחרון** מבין ארבעת בלוקי ה-RTL המותאמים אישית. מכאן והלאה כל הבלוקים הם Xilinx IP.

---

## ⑤ AXI DMA — `axi_dma_0`

**סוג:** Xilinx IP · `xilinx.com:ip:axi_dma:7.1` · תצורה: `c_include_sg=0` (Simple Mode), `c_include_mm2s=0` (S2MM בלבד)

**תפקיד במערכת:** מעביר את זרם ה-AXI4-Stream לזיכרון ה-DDR ללא מעורבות שוטפת של המעבד. זהו הרכיב היחיד במערכת שהוא **AXI Master בזכות עצמו** על אפיק הזיכרון — לא רק Slave שמגיב לבקשות.

### ממשקי הכניסה

| ממשק/סיגנל | רוחב | מקור בפועל | תפקיד |
|---|---:|---|---|
| `s_axi_lite_aclk`, `m_axi_s2mm_aclk` | 1 | `FCLK_CLK0` | שעונים (משותפים לכל התכן) |
| `axi_resetn` | 1 | `proc_sys_reset_0/peripheral_aresetn` | איפוס **Active-Low** (שונה מה-RTL המותאם!) |
| `S_AXIS_S2MM` (ממשק) | 32 | `axi_stream_master_0/axis` | **קלט הנתונים** — Stream to Memory-Mapped |
| `S_AXI_LITE` (ממשק) | 32 | `axi_interconnect_ctrl/M00_AXI` | **ערוץ הבקרה** — רגיסטרי הגדרה וסטטוס מהמעבד |

### ממשקי היציאה

| ממשק/סיגנל | רוחב | יעד בפועל | תפקיד |
|---|---:|---|---|
| `M_AXI_S2MM` (ממשק) | 32→64 (דרך Upsizer) | `axi_interconnect_0/S00_AXI` | **כתיבת הנתונים לזיכרון** — AXI4 מלא עם כתובות ו-Burst |
| `s2mm_introut` | 1 | לא מחווט (Interrupts מבוטלים בתוכנה — עבודה ב-Polling) | קו הפסקה על סיום/שגיאת S2MM |

**מחובר אל:** נכנס מ-④ בנתונים (`S_AXIS_S2MM`) ומ-⑦ בבקרה (`S_AXI_LITE`), יוצא אל ⑥ (`axi_interconnect_0`) לכתיבה לזיכרון.

**נקודת מפתח — כתובות:** ה-`S_AXI_LITE` ממופה ב-Address Editor לכתובת `0x4040_0000` (64K) בטווח הכתובות של המעבד — זו הכתובת שאליה קריאות `XAxiDma_*` בתוכנה כותבות. ה-`M_AXI_S2MM` רואה את מרחב ה-DDR כולו (1GB, `0x0000_0000`–`0x3FFF_FFFF`) דרך פורט HP0.

**נקודת מפתח — משאבים:** זהו הרכיב הגדול ביותר במערכת: 823 LUTs ו-1,219 FFs — פי כ-5 מכל ארבעת בלוקי ה-RTL המותאמים גם יחד (סעיף 11.2 בדוח הראשי).

---

## ⑥ AXI Interconnect (נתיב הנתונים) — `axi_interconnect_0`

**סוג:** Xilinx IP · `xilinx.com:ip:axi_interconnect:2.1`

**תפקיד במערכת:** מחבר את ה-DMA (Master בודד) אל פורט ה-HP0 של ה-PS (Slave בודד). למרות שיש כאן רק מאסטר אחד ו-Slave אחד, ה-Interconnect עדיין נדרש כי הוא מכיל בפועל **שני רכיבי המרה מוסתרים**:

### תת-הרכיבים בתוך ה-Interconnect (Auto-Inserted)

| תת-רכיב | תפקיד | פרטים שנמצאו בקובצי ה-IP |
|---|---|---|
| `auto_us` (AXI Data Width Converter / Upsizer) | הרחבת רוחב האפיק | `S_AXI` = **32 ביט** (מה-DMA) → `M_AXI` = **64 ביט** (אל ה-PS) |
| `auto_pc_0` (AXI Protocol Converter) | התאמת גרסת פרוטוקול | `SI_PROTOCOL = AXI4` (מה-DMA) → `MI_PROTOCOL = AXI3` (אל ה-PS — פורטי ה-HP ב-Zynq-7000 הם AXI3) |

### ממשקים

| ממשק | רוחב | מקור/יעד בפועל |
|---|---:|---|
| `S00_AXI` | 32 | ← `axi_dma_0/M_AXI_S2MM` |
| `M00_AXI` | 64 | → `processing_system7_0/S_AXI_HP0` |
| `ACLK`, `S00_ACLK`, `M00_ACLK` | 1 | ← `FCLK_CLK0` |
| `ARESETN` | 1 | ← `proc_sys_reset_0/interconnect_aresetn` |
| `S00_ARESETN`, `M00_ARESETN` | 1 | ← `proc_sys_reset_0/peripheral_aresetn` |

**מחובר אל:** נכנס מ-⑤ (`axi_dma_0`), יוצא אל ⑧ (`processing_system7_0`, `S_AXI_HP0`).

**נקודת מפתח:** הרוחב הפיזי של אפיק הנתונים בפועל הוא **64 ביט** מרגע הכניסה ל-PS, לא 32 — שינוי שמתבצע אוטומטית על ידי Vivado (Block Automation) ואינו נראה בתרשים הבלוקים הגרפי. זהו התיקון המדויק לנימוק `DATA_WIDTH=32` בדוח הראשי: הבחירה ב-32 ביט נעשתה עבור ה-Data Path המותאם אישית בלבד; ההתאמה לרוחב הפיזי של ה-DDR מטופלת בנפרד על ידי התשתית.

---

## ⑦ AXI Interconnect (נתיב הבקרה) — `axi_interconnect_ctrl`

**סוג:** Xilinx IP · `xilinx.com:ip:axi_interconnect:2.1`

**תפקיד במערכת:** מחבר את יציאת ה-`M_AXI_GP0` של המעבד (Master) אל ממשק ה-`S_AXI_LITE` של ה-DMA (Slave). זהו **מסלול הבקרה** המקביל למסלול הנתונים של ⑥ — נפרד ממנו לחלוטין פיזית, כך שתעבורת בקרה (הגדרת רגיסטרים) לא מתחרה בתעבורת נתונים בנפח גבוה.

### תת-הרכיב בתוך ה-Interconnect

| תת-רכיב | תפקיד | פרטים |
|---|---|---|
| `auto_pc_1` (AXI Protocol Converter) | התאמת פרוטוקול | `SI_PROTOCOL = AXI3` (מה-PS, `M_AXI_GP0` הוא AXI3) → `MI_PROTOCOL = AXI4LITE` (אל ה-DMA) |

### ממשקים

| ממשק | רוחב | מקור/יעד בפועל |
|---|---:|---|
| `S00_AXI` | 32 | ← `processing_system7_0/M_AXI_GP0` |
| `M00_AXI` | 32 | → `axi_dma_0/S_AXI_LITE` |
| `ACLK` וכל תת-השעונים | 1 | ← `FCLK_CLK0` |
| `ARESETN` | 1 | ← `proc_sys_reset_0/interconnect_aresetn` |
| `S00_ARESETN`, `M00_ARESETN` | 1 | ← `proc_sys_reset_0/peripheral_aresetn` |

**מחובר אל:** נכנס מ-⑧ (`processing_system7_0/M_AXI_GP0`), יוצא אל ⑤ (`axi_dma_0/S_AXI_LITE`).

**נקודת מפתח:** קיומם של **שני** Interconnect נפרדים (⑥ ו-⑦) הוא ביטוי ישיר לעיקרון "בקרה דרך GP, נתונים דרך HP" שמתועד בדוח הראשי — לא רק שני פורטים שונים ב-PS, אלא שני מסלולי חומרה פיזית נפרדים לגמרי מקצה לקצה.

---

## ⑧ Zynq Processing System — `processing_system7_0`

**סוג:** Xilinx Hard IP · `xilinx.com:ip:processing_system7:5.5` · תצורה: `PCW_USE_S_AXI_HP0=1`

**תפקיד במערכת:** ליבת המעבד (ARM Cortex-A9), בקר ה-DDR, ומחולל השעונים והאיפוסים של המערכת כולה. זהו הרכיב היחיד ב-Block Design שאינו לוגיקה שנוספה על ידי המתכנן, אלא ייצוג של החומרה הקבועה על השבב (Hard IP).

### הממשקים הרלוונטיים לתכן זה

| ממשק/סיגנל | כיוון | רוחב | מחובר בפועל אל | תפקיד |
|---|---|---:|---|---|
| `M_AXI_GP0` | יציאה (Master) | 32 | → `axi_interconnect_ctrl/S00_AXI` | בקרת ה-DMA מהמעבד |
| `S_AXI_HP0` | כניסה (Slave) | 64 | ← `axi_interconnect_0/M00_AXI` | קליטת כתיבות ה-DMA אל ה-DDR |
| `M_AXI_GP0_ACLK`, `S_AXI_HP0_ACLK` | כניסה | 1 | ← `FCLK_CLK0` | שעוני שני הפורטים |
| `FCLK_CLK0` | יציאה | 1 | → כל בלוקי ה-PL וה-AXI בתכן | **מקור השעון היחיד של המערכת כולה**, 50 MHz |
| `FCLK_RESET0_N` | יציאה | 1 | → `proc_sys_reset_0/ext_reset_in` | איפוס גלובלי מה-PS, Active-Low |
| `DDR` | יציאה (ממשק Master פיזי) | — | → פין `DDR` החיצוני (ל-DDR3L שעל הכרטיס) | ממשק הזיכרון הפיזי |
| `FIXED_IO` | יציאה (ממשק) | — | → פין `FIXED_IO` החיצוני | פינים קבועים של ה-PS (MIO, שעון, איפוס) |

**מחובר אל:** נותן שירות לכל שאר המערכת — מקור השעון (כולם), מקור האיפוס (⑨), צד הבקרה (⑦) וצד הנתונים (⑥) של ה-DMA.

**נקודת מפתח:** `S_AXI_HP0` פועל ברוחב **64 ביט**, לא 32 — זו הסיבה לצורך ב-`auto_us` בתוך ⑥. פורטי ה-HP מיועדים ל-Masters ב-PL שמעבירים נפח נתונים, בניגוד לפורטי ה-GP שמיועדים לתעבורת בקרה קלה.

---

## ⑨ Processor System Reset — `proc_sys_reset_0`

**סוג:** Xilinx IP · `xilinx.com:ip:proc_sys_reset:5.0`

**תפקיד במערכת:** מייצר את כל אותות האיפוס המסונכרנים של התכן משני מקורות: איפוס חיצוני מה-PS ואיפוס Debug. זהו הבלוק היחיד שאחראי גם לפולריות **Active-High** (ל-RTL המותאם) וגם **Active-Low** (ל-AXI Interconnect ול-DMA) — משתי יציאות שונות של אותו רכיב.

### כניסות

| סיגנל | רוחב | מקור בפועל | תפקיד |
|---|---:|---|---|
| `slowest_sync_clk` | 1 | `FCLK_CLK0` | השעון שאליו מסונכרן האיפוס |
| `ext_reset_in` | 1 | `processing_system7_0/FCLK_RESET0_N` | איפוס חיצוני מה-PS |
| `aux_reset_in` | 1 | `xlconstant_0/dout` (= 0) | איפוס עזר — מבוטל |
| `mb_debug_sys_rst` | 1 | `xlconstant_0/dout` (= 0) | איפוס Debug של MicroBlaze — לא רלוונטי, מבוטל |
| `dcm_locked` | 1 | `xlconstant_1/dout` (= 1) | "השעון נעול" — מקובע ל-1 כי אין DCM/MMCM נוסף בתכן |

### יציאות

| סיגנל | רוחב | פולריות | יעד בפועל | תפקיד |
|---|---:|---|---|---|
| `peripheral_reset` | 1 | **Active-High** | `rst` בכל ארבעת בלוקי ה-RTL המותאמים (①–④) | תואם את סגנון ה-Reset שנכתב ב-Verilog |
| `peripheral_aresetn` | 1 | **Active-Low** | `axi_dma_0/axi_resetn`, `S00/M00_ARESETN` בשני ה-Interconnect | תואם את דרישת AXI לאיפוס Active-Low |
| `interconnect_aresetn` | 1 | **Active-Low** | `ARESETN` הראשי של שני ה-Interconnect | איפוס גלובלי לרכיבי ה-Interconnect עצמם |

**מחובר אל:** נכנס מ-⑧ (`FCLK_RESET0_N`) ומ-⑩⑪ (הקבועים), יוצא אל **כל** שאר הבלוקים בתכן — זהו הבלוק היחיד עם Fanout לכל הרכיבים.

**נקודת מפתח:** ההבדל בין `peripheral_reset` (Active-High, ל-4 בלוקי ה-RTL) לבין `peripheral_aresetn`/`interconnect_aresetn` (Active-Low, לכל רכיבי ה-AXI) הוא **פתרון פולריות אלגנטי**: שני סגנונות ה-Reset מגיעים משני יציאות שונות של אותו IP יחיד, ללא צורך בשער היפוך (`~`) בשום מקום בתכן.

---

## ⑩⑪ Constants — `xlconstant_0`, `xlconstant_1`

**סוג:** Xilinx IP · `xilinx.com:ip:xlconstant:1.1` (שני מופעים)

**תפקיד במערכת:** ספקי ערך קבוע (0 או 1) לכניסות של ⑨ שאינן בשימוש בתצורה הנוכחית של התכן, אך חייבות להיות מחווטות לערך תקף כדי ש-Vivado יבצע Validate Design בהצלחה.

| בלוק | פרמטר | ערך פלט | יעד | משמעות |
|---|---|---:|---|---|
| `xlconstant_0` | `CONST_VAL` | 0 | `aux_reset_in`, `mb_debug_sys_rst` ב-`proc_sys_reset_0` | "אין איפוס עזר", "אין Debug של MicroBlaze" — שני מאפיינים שאינם רלוונטיים לתכן זה |
| `xlconstant_1` | (ברירת מחדל) | 1 | `dcm_locked` ב-`proc_sys_reset_0` | "מקור השעון נעול ותקף" — נדרש תמיד להיות 1 כשאין רכיב נעילת שעון (DCM/MMCM) נפרד בתכן |

**מחובר אל:** שני הבלוקים מזינים אך ורק את ⑨ (`proc_sys_reset_0`).

**נקודת מפתח:** אלה שני הבלוקים ה"קטנים" ביותר בתרשים אך הם ממחישים עיקרון חשוב ב-Vivado: **כניסה שאינה בשימוש עדיין חייבת ערך מוגדר** — לא ניתן להשאיר פורט "צף" ב-Block Design ולצפות ש-Validate Design יעבור.

---

## סיגנל חיצוני יחיד — `start`

**סוג:** Port חיצוני בודד (I) · פין פיזי: **K18**, תקן **LVCMOS33** (`stage8_start_button.xdc`)

זהו **הפורט החיצוני היחיד** בכל ה-Block Design מלבד `DDR` ו-`FIXED_IO` (שהם ממשקי המערכת הקבועים של ה-PS). מקורו הפיזי הוא **BTN0** על כרטיס ה-Zybo Z7-20.

**מחובר אל:** ① (`data_generator_0/start`) ו-② (`packet_builder_FSM_0/start`) בו-זמנית — לחיצה פיזית אחת מפעילה את שני הבלוקים הראשונים במסלול יחד.

**נקודת מפתח:** האות אינו עובר Debounce או שרשרת סינכרון (ראו מגבלות בדוח הראשי) — זהו הקלט האסינכרוני היחיד בכל התכן.

---

## טבלת סיכום — כל הבלוקים במבט אחד

| # | בלוק | סוג | שעון | איפוס | תפקיד במשפט אחד |
|---:|---|---|---|---|---|
| ① | `data_generator_0` | RTL מותאם | FCLK_CLK0 | Active-High | מקור הנתונים הפנימי — הרצף `1,7,8,3,6,3` |
| ② | `packet_builder_FSM_0` | RTL מותאם | FCLK_CLK0 | Active-High | בניית ה-Packet וחישוב ה-Checksum |
| ③ | `sync_fifo_0` | RTL מותאם | FCLK_CLK0 | Active-High | חציצה בין קצב הכתיבה לקצב הקריאה |
| ④ | `axi_stream_master_0` | RTL מותאם | FCLK_CLK0 | Active-High | המרה לפרוטוקול AXI4-Stream תקני |
| ⑤ | `axi_dma_0` | Xilinx IP | FCLK_CLK0 | Active-Low | העברת ה-Stream לכתיבה בזיכרון DDR |
| ⑥ | `axi_interconnect_0` | Xilinx IP | FCLK_CLK0 | Active-Low | נתיב הנתונים: DMA → S_AXI_HP0 (32→64 ביט) |
| ⑦ | `axi_interconnect_ctrl` | Xilinx IP | FCLK_CLK0 | Active-Low | נתיב הבקרה: M_AXI_GP0 → S_AXI_LITE |
| ⑧ | `processing_system7_0` | Hard IP | — (מקור) | — (מקור) | ARM, בקר DDR, ומקור השעון/איפוס הגלובלי |
| ⑨ | `proc_sys_reset_0` | Xilinx IP | FCLK_CLK0 | — | ייצור כל אותות האיפוס בשתי הפולריות |
| ⑩⑪ | `xlconstant_0/1` | Xilinx IP | — | — | ערכי קבע לכניסות לא-בשימוש של ⑨ |

**סה"כ 11 מופעי בלוק** (ללא ספירת תת-הרכיבים האוטומטיים `auto_us`, `auto_pc_0`, `auto_pc_1` שנוצרו בתוך ⑥ ו-⑦ על ידי Vivado).

---

**נספח זה נכתב כמסמך עצמאי, להתאחדות אפשרית עם [PROJECT_REPORT_HE.md](PROJECT_REPORT_HE.md) בהמשך.**
