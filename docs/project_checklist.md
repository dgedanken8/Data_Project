# Data Project — Project Checklist

This file tracks the progress of the Data Project.

## Current Status

Completed stages:

- Stage 0 — GitHub + Project Structure
- Stage 1 — Data Protocol

Current stage:

- Stage 2 — Data Generator + Testbench

---

## Main Project Checklist

| Stage | Name | Status | Output |
|---:|---|---|---|
| 0 | GitHub + Project Structure | ✅ Completed | Repository, folders, README, docs, first commit |
| 1 | Data Protocol | ✅ Completed | `docs/data_protocol.md` |
| 2 | Data Generator + Testbench | ⬜ Pending | `rtl/data_generator.v` + `tb/tb_data_generator.v` |
| 3 | Packet Builder FSM + Testbench | ⬜ Pending | `rtl/packet_builder_fsm.v` + testbench |
| 4 | Sync FIFO + Testbench | ⬜ Pending | `rtl/sync_fifo.v` + testbench |
| 5 | AXI-Stream Master + Testbench | ⬜ Pending | `rtl/axis_stream_master.v` + testbench |
| 6 | Full RTL Top Simulation | ⬜ Pending | `rtl/data_project_top.v` + full testbench |
| 7 | Vivado Block Design + AXI DMA + DDR | ⬜ Pending | Vivado Block Design |
| 8 | Vitis C Verification | ⬜ Pending | C program for DMA and DDR verification |
| 9 | Async FIFO + CDC + Testbench | ⬜ Pending | `rtl/async_fifo.v` + testbench |
| 10 | Full Integration with CDC + DMA + DDR | ⬜ Pending | Full hardware system |
| 11 | ILA + Vivado Reports | ⬜ Pending | ILA screenshots, timing and utilization reports |
| 12 | Python CSV / Graph | ⬜ Pending | CSV file, Python script, graph |
| 13 | UART or SPI Extension | ⬜ Pending | Real communication source |
| 14 | Portfolio Polish | ⬜ Pending | Final GitHub portfolio documentation |

---

## Stage 0 — GitHub + Project Structure

- [x] Create `Data_Project` folder
- [x] Create GitHub repository
- [x] Create project folder structure
- [x] Add `README.md`
- [x] Add work plan document
- [x] Add block diagram
- [x] Make first commit
- [x] Push to GitHub

Status: ✅ Completed

---

## Stage 1 — Data Protocol

- [x] Create `docs/data_protocol.md`
- [x] Define `DATA_WIDTH = 32`
- [x] Define Header
- [x] Define Length
- [x] Define Data words
- [x] Define Checksum
- [x] Define Expected Packet
- [x] Define PASS / FAIL criteria
- [x] Commit changes
- [x] Push to GitHub

Status: ✅ Completed

---

## Stage 2 — Data Generator + Testbench

- [ ] Understand the purpose of the Data Generator
- [ ] Define inputs and outputs
- [ ] Write `rtl/data_generator.v`
- [ ] Write `tb/tb_data_generator.v`
- [ ] Run simulation
- [ ] Verify expected data sequence
- [ ] Document simulation result
- [ ] Commit changes
- [ ] Push to GitHub

Status: ⬜ Pending

---

## Stage 3 — Packet Builder FSM + Testbench

- [ ] Understand the purpose of the Packet Builder FSM
- [ ] Define FSM states
- [ ] Write `rtl/packet_builder_fsm.v`
- [ ] Write `tb/tb_packet_builder_fsm.v`
- [ ] Verify Header output
- [ ] Verify Length output
- [ ] Verify Data output order
- [ ] Verify Checksum output
- [ ] Run simulation
- [ ] Commit changes
- [ ] Push to GitHub

Status: ⬜ Pending

---

## Stage 4 — Sync FIFO + Testbench

- [ ] Understand the purpose of FIFO
- [ ] Define FIFO inputs and outputs
- [ ] Write `rtl/sync_fifo.v`
- [ ] Write `tb/tb_sync_fifo.v`
- [ ] Verify write operation
- [ ] Verify read operation
- [ ] Verify data order
- [ ] Verify full and empty flags
- [ ] Verify overflow and underflow
- [ ] Run simulation
- [ ] Commit changes
- [ ] Push to GitHub

Status: ⬜ Pending

---

## Stage 5 — AXI-Stream Master + Testbench

- [ ] Understand AXI-Stream handshake
- [ ] Define inputs and outputs
- [ ] Write `rtl/axis_stream_master.v`
- [ ] Write `tb/tb_axis_stream_master.v`
- [ ] Verify `tvalid`
- [ ] Verify `tready`
- [ ] Verify `tdata`
- [ ] Verify `tlast`
- [ ] Verify backpressure behavior
- [ ] Run simulation
- [ ] Commit changes
- [ ] Push to GitHub

Status: ⬜ Pending

---

## Stage 6 — Full RTL Top Simulation

- [ ] Write `rtl/data_project_top.v`
- [ ] Write `tb/tb_data_project_top.v`
- [ ] Connect Data Generator
- [ ] Connect Packet Builder FSM
- [ ] Connect Sync FIFO
- [ ] Connect AXI-Stream Master
- [ ] Run full RTL simulation
- [ ] Verify packet output
- [ ] Commit changes
- [ ] Push to GitHub

Status: ⬜ Pending

---

## Stage 7 — Vivado Block Design + AXI DMA + DDR

- [ ] Create Vivado project
- [ ] Create Block Design
- [ ] Add Zynq7 Processing System
- [ ] Add AXI DMA
- [ ] Add AXI Interconnect / SmartConnect
- [ ] Add Processor System Reset
- [ ] Add Custom RTL IP
- [ ] Connect AXI-Stream interface
- [ ] Connect DDR through PS
- [ ] Validate Block Design
- [ ] Generate bitstream
- [ ] Commit changes
- [ ] Push to GitHub

Status: ⬜ Pending

---

## Stage 8 — Vitis C Verification

- [ ] Create Vitis platform
- [ ] Create C application
- [ ] Initialize AXI DMA
- [ ] Define DDR buffer
- [ ] Start DMA transfer
- [ ] Wait for transfer completion
- [ ] Read DDR data
- [ ] Verify Header
- [ ] Verify Length
- [ ] Verify Data words
- [ ] Verify Checksum
- [ ] Print PASS / FAIL
- [ ] Commit changes
- [ ] Push to GitHub

Status: ⬜ Pending

---

## Stage 9 — Async FIFO + CDC + Testbench

- [ ] Understand CDC problem
- [ ] Define write clock domain
- [ ] Define read clock domain
- [ ] Write `rtl/async_fifo.v`
- [ ] Write `tb/tb_async_fifo.v`
- [ ] Verify data transfer between clocks
- [ ] Verify full and empty flags
- [ ] Verify data order
- [ ] Run simulation
- [ ] Commit changes
- [ ] Push to GitHub

Status: ⬜ Pending

---

## Stage 10 — Full Integration with CDC + DMA + DDR

- [ ] Add Async FIFO to full system
- [ ] Connect different clock domains
- [ ] Connect AXI-Stream Master to AXI DMA
- [ ] Run hardware test
- [ ] Verify DDR data
- [ ] Verify Checksum
- [ ] Verify no overflow
- [ ] Verify no underflow
- [ ] Commit changes
- [ ] Push to GitHub

Status: ⬜ Pending

---

## Stage 11 — ILA + Vivado Reports

- [ ] Add ILA
- [ ] Probe important signals
- [ ] Capture `tdata`
- [ ] Capture `tvalid`
- [ ] Capture `tready`
- [ ] Capture `tlast`
- [ ] Capture FIFO flags
- [ ] Save ILA screenshots
- [ ] Save timing report
- [ ] Save utilization report
- [ ] Commit changes
- [ ] Push to GitHub

Status: ⬜ Pending

---

## Stage 12 — Python CSV / Graph

- [ ] Export data
- [ ] Create CSV file
- [ ] Write Python script
- [ ] Read CSV data
- [ ] Plot graph
- [ ] Save graph image
- [ ] Commit changes
- [ ] Push to GitHub

Status: ⬜ Pending

---

## Stage 13 — UART or SPI Extension

- [ ] Choose UART or SPI
- [ ] Define communication protocol
- [ ] Write RTL receiver or interface
- [ ] Write testbench
- [ ] Connect real data source
- [ ] Verify system behavior
- [ ] Commit changes
- [ ] Push to GitHub

Status: ⬜ Pending

---

## Stage 14 — Portfolio Polish

- [ ] Improve README
- [ ] Add final block diagram
- [ ] Add waveform screenshots
- [ ] Add ILA screenshots
- [ ] Add timing report summary
- [ ] Add utilization report summary
- [ ] Explain each block
- [ ] Add lessons learned
- [ ] Add future improvements
- [ ] Final GitHub review

Status: ⬜ Pending

---

## Rule Before Moving to the Next Stage

Before moving to the next stage, all answers should be YES:

- [ ] Do I understand the purpose of the stage?
- [ ] Do I understand what the block does?
- [ ] Do I understand why this block is used?
- [ ] Did I write the code myself?
- [ ] Did I write the testbench?
- [ ] Did the simulation pass?
- [ ] Did I document the result?
- [ ] Did I commit to GitHub?
- [ ] Can I explain this stage in an interview?