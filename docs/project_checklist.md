# Data_Project Main Checklist

Progress tracking for the DDR Data Logger project on Zybo Z7-20.

## Main Checklist

| Stage | Stage Name | Status | Stage Output |
|---:|---|---|---|
| 0 | GitHub + Project Structure | ✓ Done | Repository, folders, README, docs, first commit |
| 1 | Data Protocol | ✓ Done | docs/data_protocol.md with Header, Length, Data, Checksum |
| 2 | Data Generator + Testbench | ✓ Done | rtl/data_generator.v, tb/tb_data_generator.v, simulation, waveform, report |
| 3 | Packet Builder FSM + Testbench | ✓ Done | packet_builder_fsm.v + testbench + simulation |
| 4 | Sync FIFO + Testbench | ✓ Done | sync_fifo.v + testbench + simulation |
| 5 | AXI-Stream Master + Testbench | ✓ Done | axis_stream_master.v + testbench + simulation |
| 6 | Full RTL Integration Simulation | ✓ Done | tb/tb_data_project_integration.v + full RTL integration simulation + waveform + console PASS |
| 7 | Custom IP Packaging + Vivado Block Design | ✓ Done | Custom IP blocks, validated Block Design, HDL wrapper, synthesis, utilization/schematic reports, commit and push |
| 8 | AXI DMA + Zynq PS + DDR Hardware Integration | □ Pending | Vivado design with Zynq PS, AXI DMA, DDR path, bitstream and exported XSA |
| 9 | Vitis C Verification | □ Pending | C software that starts DMA and verifies DDR packet data |
| 10 | Async FIFO + CDC + Testbench | □ Pending | async_fifo.v + testbench with two clocks |
| 11 | Full Integration with CDC + DMA + DDR | □ Pending | Full system with CDC, DMA and DDR |
| 12 | ILA + Vivado Reports | □ Pending | ILA, timing report, utilization report and screenshots |
| 13 | Python CSV / Graph | □ Pending | CSV, graph, and documentation |
| 14 | UART or SPI Extension | □ Pending | Real data source replacing Data Generator |
| 15 | Portfolio Polish | □ Pending | GitHub, README, images, explanations, reports and final polish |

Current status: Stages 0-7 are complete. The next stage is Stage 8 - AXI DMA + Zynq PS + DDR Hardware Integration.

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

### Stage 4 - Sync FIFO + Testbench - ✓ Done

- ☑ Define block goal
- ☑ Write rtl/sync_fifo.v
- ☑ Write tb/tb_sync_fifo.v
- ☑ Verify write/read
- ☑ Verify full/empty
- ☑ Verify overflow/underflow
- ☑ Complete commit
- ☑ Complete push

### Stage 5 - AXI-Stream Master + Testbench - ✓ Done

- ☑ Define block goal
- ☑ Write rtl/axis_stream_master.v
- ☑ Write tb/tb_axis_stream_master.v
- ☑ Verify tvalid / tready / tdata / tlast
- ☑ Verify backpressure
- ☑ Complete commit
- ☑ Complete push

### Stage 6 - Full RTL Integration Simulation - ✓ Done

- ☑ Reviewed RTL block interfaces
- ☑ Added data_ready to packet_builder_FSM
- ☑ Wrote tb/tb_data_project_integration.v
- ☑ Connected Data Generator → Packet Builder FSM → Sync FIFO → AXI-Stream Master
- ☑ Ran full RTL integration simulation
- ☑ Verified expected AXI packet words
- ☑ Verified axis_tlast on checksum word
- ☑ Saved waveform screenshot and console PASS
- ☑ Complete commit
- ☑ Complete push

### Stage 7 - Custom IP Packaging + Vivado Block Design - ✓ Done

- ☑ Package data_generator as IP
- ☑ Package packet_builder_FSM as IP
- ☑ Package sync_fifo as IP
- ☑ Package axi_stream_master as IP
- ☑ Add custom IP repository
- ☑ Create Block Design
- ☑ Connect custom IP blocks visually
- ☑ Validate Block Design
- ☑ Generate Output Products
- ☑ Create HDL Wrapper
- ☑ Run Synthesis
- ☑ Save utilization report
- ☑ Review synthesized schematic
- ☑ Prepare AXI DMA / DDR integration plan
- ☑ Complete commit
- ☑ Complete push

### Stage 8 - AXI DMA + Zynq PS + DDR Hardware Integration - □ Pending

- ☐ Add Zynq Processing System
- ☐ Run Block Automation for Zynq PS
- ☐ Add AXI DMA
- ☐ Connect axi_stream_master m_axis to AXI DMA S_AXIS_S2MM
- ☐ Connect AXI DMA S_AXI_LITE control interface to Zynq PS
- ☐ Connect AXI DMA M_AXI_S2MM to Zynq HP port / DDR path
- ☐ Configure clocks and resets
- ☐ Configure Address Editor
- ☐ Validate Design
- ☐ Generate Bitstream
- ☐ Export Hardware XSA
- ☐ Complete commit
- ☐ Complete push

### Stage 9 - Vitis C Verification - □ Pending

- ☐ Create Vitis platform from exported XSA
- ☐ Create Vitis C application
- ☐ Initialize AXI DMA
- ☐ Define DDR buffer address
- ☐ Start S2MM DMA transfer
- ☐ Wait for DMA completion
- ☐ Read packet words from DDR
- ☐ Verify Header / Length / Data / Checksum
- ☐ Print PASS / FAIL to terminal
- ☐ Complete commit
- ☐ Complete push

### Stage 10 - Async FIFO + CDC + Testbench - □ Pending

- ☐ Study CDC concept
- ☐ Write rtl/async_fifo.v
- ☐ Write tb/tb_async_fifo.v
- ☐ Verify two independent clocks
- ☐ Verify correct data crossing
- ☐ Verify full/empty behavior
- ☐ Save waveform screenshot
- ☐ Complete commit
- ☐ Complete push

### Stage 11 - Full Integration with CDC + DMA + DDR - □ Pending

- ☐ Package async_fifo as Custom IP
- ☐ Add async_fifo to Block Design
- ☐ Integrate Async FIFO into the full system
- ☐ Connect two clock domains
- ☐ Update full integration
- ☐ Validate Design
- ☐ Run Synthesis
- ☐ Run Implementation
- ☐ Generate Bitstream
- ☐ Export updated XSA
- ☐ Verify DDR write again
- ☐ Complete commit
- ☐ Complete push

### Stage 12 - ILA + Vivado Reports - □ Pending

- ☐ Add ILA
- ☐ Probe key signals
- ☐ Capture AXI-Stream handshake
- ☐ Save ILA screenshots
- ☐ Save timing report
- ☐ Save utilization report
- ☐ Save screenshots
- ☐ Complete commit
- ☐ Complete push

### Stage 13 - Python CSV / Graph - □ Pending

- ☐ Create CSV file
- ☐ Write Python script
- ☐ Read CSV data
- ☐ Create graph
- ☐ Save screenshot / output
- ☐ Complete commit
- ☐ Complete push

### Stage 14 - UART or SPI Extension - □ Pending

- ☐ Choose UART or SPI
- ☐ Write communication block
- ☐ Run verification
- ☐ Connect receiver instead of Data Generator
- ☐ Receive real data through the system
- ☐ Complete commit
- ☐ Complete push

### Stage 15 - Portfolio Polish - □ Pending

- ☐ Update README
- ☐ Add images
- ☐ Add waveforms
- ☐ Add reports
- ☐ Add explanations for each block
- ☐ Add Future Work / Lessons Learned
- ☐ Prepare project for presentation
- ☐ Complete final commit
- ☐ Complete final push
