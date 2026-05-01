# Work Plan — Data Project

## Stage 0 — GitHub and Project Structure

Goal:
Set up a clean and professional GitHub repository for the project.

Tasks:
- Create data_project folder
- Create GitHub repository
- Create folder structure
- Add README.md
- Add work plan document
- Add block diagram
- Make first commit

Definition of Done:
- data_project folder exists
- GitHub repository exists
- README.md exists
- Project folders exist
- First commit is done

## Stage 1 — Data Protocol

Define the packet format:
- Header
- Length
- Data words
- Checksum

## Stage 2 — Data Generator + Testbench

Create a Verilog block that generates known data and verify it in simulation.

## Stage 3 — Packet Builder FSM + Testbench

Create an FSM that builds packets from generated data.

## Stage 4 — Sync FIFO + Testbench

Create a synchronous FIFO and verify order, full, empty, overflow and underflow.

## Stage 5 — AXI-Stream Master + Testbench

Create an AXI-Stream master that sends FIFO data to AXI DMA.

## Stage 6 — Full RTL Top Simulation

Connect Data Generator, Packet Builder, FIFO and AXI-Stream Master in simulation.

## Stage 7 — Vivado Block Design + AXI DMA + DDR

Connect the RTL system to Zynq PS, AXI DMA and DDR.

## Stage 8 — Vitis C Verification

Write C software to start DMA, read DDR and verify the packet.

## Stage 9 — Async FIFO + CDC + Testbench

Add clock-domain crossing using Async FIFO.

## Stage 10 — Full Integration with CDC, DMA and DDR

Run the full system with CDC, DMA and DDR.

## Stage 11 — ILA and Vivado Reports

Add hardware debug and document timing/utilization reports.

## Stage 12 — Python CSV / Graph

Export and visualize the data.

## Stage 13 — UART or SPI Extension

Replace the internal data generator with a real communication source.

## Stage 14 — Portfolio Polish

Improve GitHub documentation and prepare the project as a professional portfolio.