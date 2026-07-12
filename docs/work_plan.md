# Data_Project Work Plan

Zybo Z7-20 DDR Data Logger work plan

Current status: Stages 0-7 are complete. The next stage is Stage 8 - AXI DMA + Zynq PS + DDR Hardware Integration.

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

## Stage 4 — Sync FIFO + Testbench — Done

**Goal:** Add a synchronous FIFO to buffer data between blocks working on the same clock.

**Expected Deliverable:** sync_fifo.v, testbench and checks for write/read, full/empty, overflow and underflow.

## Stage 5 — AXI-Stream Master + Testbench — Done

**Goal:** Convert internal data into an AXI-Stream style interface using valid/ready behavior.

**Expected Deliverable:** axis_stream_master.v and testbench with tvalid, tready, tdata, tlast and backpressure checks.

## Stage 6 — Full RTL Integration Simulation — Done

**Goal:** Connect the verified RTL blocks together in an integration testbench and verify the complete RTL chain in simulation, while keeping the blocks separate for later IP packaging.

**Expected Deliverable:** tb/tb_data_project_integration.v, full RTL integration simulation, waveform screenshot and console PASS showing the complete packet from Data Generator through AXI-Stream Master.

## Stage 7 — Custom IP Packaging + Vivado Block Design — Done

**Goal:** Package each custom RTL block as a separate Vivado IP, connect the blocks visually in Vivado Block Design, validate the design, generate the HDL wrapper and run synthesis.

**Expected Deliverable:** Separate custom IP blocks for data_generator, packet_builder_FSM, sync_fifo and axi_stream_master, validated Vivado Block Design, HDL wrapper, synthesis result, utilization report, synthesized schematic, commit and push.

## Stage 8 — AXI DMA + Zynq PS + DDR Hardware Integration

**Goal:** Integrate the custom AXI-Stream output with Zynq PS, AXI DMA and DDR in Vivado hardware.

**Expected Deliverable:** Vivado Block Design with Zynq Processing System, AXI DMA, DDR path, validated hardware design, bitstream and exported XSA.

## Stage 9 — Vitis C Verification

**Goal:** Write C software that starts the DMA transfer, reads the DDR buffer and verifies the received packet.

**Expected Deliverable:** Vitis application that initializes DMA, reads DDR data and checks Header, Length, Data and Checksum.

## Stage 10 — Async FIFO + CDC + Testbench

**Goal:** Add clock-domain crossing using Async FIFO to practice CDC concepts.

**Expected Deliverable:** async_fifo.v and testbench with two independent clocks.

## Stage 11 — Full Integration with CDC + DMA + DDR

**Goal:** Integrate the CDC path into the full DMA/DDR system and verify that the complete system still writes correct data into DDR.

**Expected Deliverable:** Full system with CDC, DMA and DDR, updated Block Design, bitstream and updated XSA.

## Stage 12 — ILA + Vivado Reports

**Goal:** Add hardware debug and collect Vivado reports for timing and utilization.

**Expected Deliverable:** ILA screenshots, timing report, utilization report and supporting screenshots.

## Stage 13 — Python CSV / Graph

**Goal:** Export the verified data and visualize it using Python.

**Expected Deliverable:** CSV file, Python script and graph output.

## Stage 14 — UART or SPI Extension

**Goal:** Replace the internal Data Generator with a real external communication source.

**Expected Deliverable:** UART or SPI input block connected to the system.

## Stage 15 — Portfolio Polish

**Goal:** Polish the repository so it can be shown professionally in interviews.

**Expected Deliverable:** Final README, diagrams, screenshots, reports, lessons learned and future work.
