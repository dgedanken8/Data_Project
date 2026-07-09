# Stage 1 — Data Protocol

## Goal

The goal of this stage is to define the data packet format used in the Data Project.

Before writing Verilog code, we define exactly what the system should generate, transfer, store, and verify.

This document will be used later as the reference for the Verilog modules and testbenches.

---

## Data Width

All words in the first version of the project are 32-bit wide.

DATA_WIDTH = 32

This means that every value in the packet is represented as one 32-bit word.

---

## Initial Data Sequence

The first test data sequence is:

1, 7, 8, 3, 6, 3

These values are simple and known in advance, which makes them easy to verify in simulation.

---

## Packet Structure

The packet format is:

| Word Index | Field    | Value        | Meaning |
|-----------:|----------|--------------|---------|
| 0          | Header   | 0xA5A50001   | Start of packet |
| 1          | Length   | 0x00000006   | Number of data words |
| 2          | Data[0]  | 0x00000001   | First data word |
| 3          | Data[1]  | 0x00000007   | Second data word |
| 4          | Data[2]  | 0x00000008   | Third data word |
| 5          | Data[3]  | 0x00000003   | Fourth data word |
| 6          | Data[4]  | 0x00000006   | Fifth data word |
| 7          | Data[5]  | 0x00000003   | Sixth data word |
| 8          | Checksum | 0x0000001C   | Sum of all data words |

---

## Header

The header marks the beginning of a packet.

HEADER = 0xA5A50001

This value is chosen by us. It is a fixed identifier that helps detect the start of a valid packet.

---

## Length

The length field defines how many data words exist in the packet.

In this first example, the data sequence contains six values:

1, 7, 8, 3, 6, 3

Therefore:

LENGTH = 6

As a 32-bit hexadecimal word:

LENGTH = 0x00000006

---

## Data Words

The data words are the actual payload of the packet.

| Data Index | Decimal Value | 32-bit Hex Value |
|----------:|---------------:|------------------|
| Data[0]   | 1              | 0x00000001 |
| Data[1]   | 7              | 0x00000007 |
| Data[2]   | 8              | 0x00000008 |
| Data[3]   | 3              | 0x00000003 |
| Data[4]   | 6              | 0x00000006 |
| Data[5]   | 3              | 0x00000003 |

---

## Checksum

The checksum is used to verify that the data was transferred correctly.

For this project stage, the checksum is calculated as the sum of all data words.

Checksum calculation:

1 + 7 + 8 + 3 + 6 + 3 = 28

Decimal:

Checksum = 28

Hexadecimal:

Checksum = 0x0000001C

---

## Expected Packet

The full expected packet is:

| Word Index | Expected Value |
|-----------:|----------------|
| 0 | 0xA5A50001 |
| 1 | 0x00000006 |
| 2 | 0x00000001 |
| 3 | 0x00000007 |
| 4 | 0x00000008 |
| 5 | 0x00000003 |
| 6 | 0x00000006 |
| 7 | 0x00000003 |
| 8 | 0x0000001C |

Total packet size:

9 words

---

## PASS Criteria

The packet is valid if:

1. The first word is the correct header.
2. The second word is the correct length.
3. All data words appear in the correct order.
4. The checksum is correct.
5. No data word is missing.
6. No extra data word appears.

---

## Notes for Future Verilog Implementation

In the Verilog implementation, the header will be written as:

32'hA5A50001

The length may be written as:

32'd6

or:

32'h00000006

Both represent the same value.

---

## Next Stage

The next stage is:

Stage 2 — Data Generator + Testbench


