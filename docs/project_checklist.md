# Data_Project Main Checklist

Progress tracking for the DDR Data Logger project on Zybo Z7-20.

## Main Checklist

| Stage | Stage Name | Status | Stage Output |
|---:|---|---|---|
| 0 | GitHub + Project Structure | ✓ Done | Repository, folders, README, docs, first commit |
| 1 | Data Protocol | ✓ Done | docs/data_protocol.md with Header, Length, Data, Checksum |
| 2 | Data Generator + Testbench | ✓ Done | rtl/data_generator.v, tb/tb_data_generator.v, simulation, waveform, report |
| 3 | Packet Builder FSM + Testbench | ✓ Done | packet_builder_fsm.v + testbench + simulation |
| 4 | Sync FIFO + Testbench | □ Pending | sync_fifo.v + testbench + simulation |
| 5 | AXI-Stream Master + Testbench | □ Pending | axis_stream_master.v + testbench + simulation |
| 6 | Full RTL Top Simulation | □ Pending | data_project_top.v + full testbench + simulation |
| 7 | Vivado Block Design + AXI DMA + DDR | □ Pending | Connected Block Design ready to run |
| 8 | Vitis C Verification | □ Pending | C software that starts DMA and verifies DDR data |
| 9 | Async FIFO + CDC + Testbench | □ Pending | async_fifo.v + testbench with two clocks |
| 10 | Full Integration with CDC + DMA + DDR | □ Pending | Full system with two clock domains and DDR |
| 11 | ILA + Vivado Reports | □ Pending | ILA, timing report, utilization report |
| 12 | Python CSV / Graph | □ Pending | CSV, graph, and documentation |
| 13 | UART or SPI Extension | □ Pending | Real data source replacing Data Generator |
| 14 | Portfolio Polish | □ Pending | GitHub, README, images, explanations, and reports polish |

Current status: Stages 0-3 are complete. The next stage is Stage 4 - Sync FIFO + Testbench.

---

## Detailed Checklist

### Stage 0 - GitHub + Project Structure - ✓ Done

- ☑ Created Data_Project folder
- ☑ Created GitHub repository
- ☑ Created README.md
- ☑ Created organized folder structure
- ☑ Created work plan document
- ☑ Added block diagram
- ☑ Completed first commit
- ☑ Completed push to GitHub

### Stage 1 - Data Protocol - ✓ Done

- ☑ Created docs/data_protocol.md
- ☑ Defined DATA_WIDTH = 32
- ☑ Defined Header
- ☑ Defined Length
- ☑ Defined Data sequence
- ☑ Defined Checksum
- ☑ Defined Expected Packet
- ☑ Defined PASS / FAIL Criteria
- ☑ Completed commit
- ☑ Completed push

### Stage 2 - Data Generator + Testbench - ✓ Done

- ☑ Defined block goal
- ☑ Defined inputs and outputs
- ☑ Wrote rtl/data_generator.v
- ☑ Wrote tb/tb_data_generator.v
- ☑ Ran Behavioral Simulation
- ☑ Verified expected sequence: 1, 7, 8, 3, 6, 3
- ☑ Saved waveform screenshot: images/stage2_data_generator_waveform.png
- ☑ Created simulation report: reports/stage2_data_generator_simulation.md
- ☑ Completed commit
- ☑ Completed push

### Stage 3 - Packet Builder FSM + Testbench - ✓ Done

- ☑ Define block goal
- ☑ Define FSM states
- ☑ Write rtl/packet_builder_fsm.v
- ☑ Write tb/tb_packet_builder_fsm.v
- ☑ Run simulation
- ☑ Verify Header / Length / Data / Checksum
- ☑ Complete commit
- ☑ Complete push

### Stage 4 - Sync FIFO + Testbench - □ Pending

- ☐ Define block goal
- ☐ Write rtl/sync_fifo.v
- ☐ Write tb/tb_sync_fifo.v
- ☐ Verify write/read
- ☐ Verify full/empty
- ☐ Verify overflow/underflow
- ☐ Complete commit
- ☐ Complete push

### Stage 5 - AXI-Stream Master + Testbench - □ Pending

- ☐ Define block goal
- ☐ Write rtl/axis_stream_master.v
- ☐ Write tb/tb_axis_stream_master.v
- ☐ Verify tvalid / tready / tdata / tlast
- ☐ Verify backpressure
- ☐ Complete commit
- ☐ Complete push

### Stage 6 - Full RTL Top Simulation - □ Pending

- ☐ Write rtl/data_project_top.v
- ☐ Write tb/tb_data_project_top.v
- ☐ Connect all blocks
- ☐ Run full simulation
- ☐ Save result
- ☐ Complete commit
- ☐ Complete push

### Stage 7 - Vivado Block Design + AXI DMA + DDR - □ Pending

- ☐ Create Block Design
- ☐ Add Zynq PS
- ☐ Add AXI DMA
- ☐ Add Interconnect / SmartConnect
- ☐ Connect Custom RTL
- ☐ Connect DDR
- ☐ Pass design validate
- ☐ Complete commit
- ☐ Complete push

### Stage 8 - Vitis C Verification - □ Pending

- ☐ Create Vitis project
- ☐ Write DMA initialization code
- ☐ Define DDR buffer address
- ☐ Start DMA transfer
- ☐ Read data from DDR
- ☐ Verify Header / Length / Data / Checksum
- ☐ Complete commit
- ☐ Complete push

### Stage 9 - Async FIFO + CDC + Testbench - □ Pending

- ☐ Write rtl/async_fifo.v
- ☐ Write tb/tb_async_fifo.v
- ☐ Verify two clocks
- ☐ Verify correct data crossing
- ☐ Complete commit
- ☐ Complete push

### Stage 10 - Full Integration with CDC + DMA + DDR - □ Pending

- ☐ Integrate Async FIFO into the system
- ☐ Update full integration
- ☐ Verify two clock domains
- ☐ Verify DDR write
- ☐ Complete commit
- ☐ Complete push

### Stage 11 - ILA + Vivado Reports - □ Pending

- ☐ Add ILA
- ☐ Verify key signals
- ☐ Save timing report
- ☐ Save utilization report
- ☐ Save screenshots
- ☐ Complete commit
- ☐ Complete push

### Stage 12 - Python CSV / Graph - □ Pending

- ☐ Create CSV file
- ☐ Write Python script
- ☐ Create graph
- ☐ Save screenshot / output
- ☐ Complete commit
- ☐ Complete push

### Stage 13 - UART or SPI Extension - □ Pending

- ☐ Choose UART or SPI
- ☐ Write communication block
- ☐ Run verification
- ☐ Receive real data through the system
- ☐ Complete commit
- ☐ Complete push

### Stage 14 - Portfolio Polish - □ Pending

- ☐ Update README
- ☐ Add images
- ☐ Add waveforms
- ☐ Add reports
- ☐ Add explanations for each block
- ☐ Add Future Work / Lessons Learned
- ☐ Prepare project for presentation
