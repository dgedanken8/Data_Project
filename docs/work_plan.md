# Data_Project Work Plan

Zybo Z7-20 DDR Data Logger work plan

## Stage 0 — GitHub + Project Structure — Done

**Goal:** Set up a clean project repository and a professional folder structure. This stage creates the foundation for version control, documentation, and portfolio presentation.

**Expected Deliverable:** A GitHub repository with README, docs, images, rtl, tb, vivado, vitis, reports and supporting folders.

## Stage 1 — Data Protocol — Done

**Goal:** Define the data packet rules before writing more RTL. This creates one agreed format that all future blocks will follow.

**Expected Deliverable:** A protocol document that defines DATA_WIDTH, Header, Length, Data, Checksum, Expected Packet and PASS/FAIL criteria.

## Stage 2 — Data Generator + Testbench — Done

**Goal:** Create the first real RTL block. The block generates a known sequence of 32-bit data words and uses a simple valid/ready handshake.

**Expected Deliverable:** Verified rtl/data_generator.v, tb/tb_data_generator.v, waveform screenshot, simulation report, commit and push.

## Stage 3 — Packet Builder FSM + Testbench — Done

**Goal:** Build an FSM that wraps generated data into a structured packet. This stage introduces real control logic using states.

**Expected Deliverable:** packet_builder_fsm.v, testbench and simulation for Header, Length, Data and Checksum.

## Stage 4 — Sync FIFO + Testbench

**Goal:** Add a synchronous FIFO to buffer data between blocks working on the same clock.

**Expected Deliverable:** sync_fifo.v, testbench and checks for write/read, full/empty, overflow and underflow.

## Stage 5 — AXI-Stream Master + Testbench

**Goal:** Convert internal data into an AXI-Stream style interface using valid/ready behavior.

**Expected Deliverable:** axis_stream_master.v and testbench with tvalid, tready, tdata, tlast and backpressure checks.

## Stage 6 — Full RTL Top Simulation

**Goal:** Connect the main RTL blocks together and verify the complete RTL chain in simulation.

**Expected Deliverable:** data_project_top.v, full testbench and simulation result.

## Stage 7 — Vivado Block Design + AXI DMA + DDR

**Goal:** Connect the custom RTL system to the Zynq PS, AXI DMA and DDR memory through Vivado Block Design.

**Expected Deliverable:** Validated Block Design ready for hardware execution.

## Stage 8 — Vitis C Verification

**Goal:** Write C software that starts the DMA transfer, reads the DDR buffer and verifies the received packet.

**Expected Deliverable:** Vitis application that checks Header, Length, Data and Checksum from DDR.

## Stage 9 — Async FIFO + CDC + Testbench

**Goal:** Add clock-domain crossing using Async FIFO to practice CDC concepts.

**Expected Deliverable:** async_fifo.v and testbench with two independent clocks.

## Stage 10 — Full Integration with CDC + DMA + DDR

**Goal:** Integrate the CDC path into the full system and verify transfer into DDR.

**Expected Deliverable:** Full system with CDC, DMA and DDR.

## Stage 11 — ILA + Vivado Reports

**Goal:** Add hardware debug and collect Vivado reports for timing and utilization.

**Expected Deliverable:** ILA screenshots, timing report and utilization report.

## Stage 12 — Python CSV / Graph

**Goal:** Export the verified data and visualize it using Python.

**Expected Deliverable:** CSV file, Python script and graph output.

## Stage 13 — UART or SPI Extension

**Goal:** Replace the internal Data Generator with a real external communication source.

**Expected Deliverable:** UART or SPI input block connected to the system.

## Stage 14 — Portfolio Polish

**Goal:** Polish the repository so it can be shown professionally in interviews.

**Expected Deliverable:** Final README, diagrams, screenshots, reports, lessons learned and future work.
