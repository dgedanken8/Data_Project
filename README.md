

# Data Project

## Project Overview

Data Project is a Zynq-based DDR Data Logger project implemented on the Zybo Z7-20 board.

The system generates or receives data inside the FPGA fabric, packs the data into structured packets, transfers the data through FIFO and AXI-Stream, writes it to DDR memory using AXI DMA, and verifies the received data using software running on the Zynq Processing System.

## Target Board

- Zybo Z7-20
- Xilinx Zynq-7000 SoC

## Tools

- Vivado
- Verilog
- Vitis C
- Python
- Git / GitHub

## Main Topics

- Verilog RTL
- FSM
- FIFO
- CDC
- AXI-Stream
- AXI DMA
- DDR Memory
- Vitis C Verification
- Python CSV / Graph
- GitHub Documentation

## Project Structure

```text
data_project/
├── rtl/        Verilog RTL source files
├── tb/         Testbench files
├── vivado/     Vivado project files, constraints, and block design notes
├── vitis/      Vitis C software
├── python/     Python scripts for CSV and graphs
├── docs/       Documentation
├── images/     Block diagrams, waveforms, and screenshots
├── reports/    Timing, utilization, and simulation reports
└── README.md