# Work Plan — Data Project

## Project Overview

Data Project is a Zynq-based DDR Data Logger project implemented on the Zybo Z7-20 board.

The goal of this project is to build a complete FPGA/SoC data path that starts from a custom Verilog data source, packs the data into structured packets, buffers the data, transfers the data using AXI-Stream and AXI DMA, writes it into DDR memory, and verifies the result using software running on the Zynq Processing System.

This project is built step by step.  
Each block is designed, understood, simulated, documented, committed to GitHub, and only then connected to the next stage.

---

## Target Board

- Zybo Z7-20
- Xilinx Zynq-7000 SoC

---

## Development Tools

- Vivado
- Verilog
- Vitis C
- Git / GitHub
- Python, planned for later stages

---

## Main Engineering Topics

This project is designed to demonstrate practical FPGA and SoC development skills:

- Verilog RTL design
- Modular hardware design
- Testbench development
- FSM design
- FIFO buffering
- AXI-Stream protocol
- AXI DMA
- DDR memory access
- Clock Domain Crossing, CDC
- Async FIFO
- Vivado Block Design
- Vitis C verification
- Hardware debugging with ILA
- Python CSV and graph visualization
- Professional GitHub documentation

---

## Final System Architecture

The planned final system architecture is:

```text
Data Generator / Communication Receiver
        ↓
Packet Builder FSM
        ↓
FIFO
        ↓
Async FIFO / CDC
        ↓
AXI-Stream Master
        ↓
AXI DMA
        ↓
DDR Memory
        ↓
Vitis C Program
        ↓
UART Terminal / Python / CSV / Graph
```

---

## Project Development Rule

The project is developed gradually.

A stage is considered complete only when:

- The purpose of the stage is understood
- The role of the block is understood
- The reason for using the block is understood
- The RTL code was written
- A testbench was written
- The simulation passed
- The result was documented
- The changes were committed to GitHub
- The changes were pushed to GitHub
- The stage can be explained clearly in an interview

---

## Current Project Status

| Stage | Name | Status |
|---:|---|---|
| 0 | GitHub + Project Structure | Completed |
| 1 | Data Protocol | Completed |
| 2 | Data Generator + Testbench | Next |
| 3 | Packet Builder FSM + Testbench | Pending |
| 4 | Sync FIFO + Testbench | Pending |
| 5 | AXI-Stream Master + Testbench | Pending |
| 6 | Full RTL Top Simulation | Pending |
| 7 | Vivado Block Design + AXI DMA + DDR | Pending |
| 8 | Vitis C Verification | Pending |
| 9 | Async FIFO + CDC + Testbench | Pending |
| 10 | Full Integration with CDC + DMA + DDR | Pending |
| 11 | ILA + Vivado Reports | Pending |
| 12 | Python CSV / Graph | Pending |
| 13 | UART or SPI Extension | Pending |
| 14 | Portfolio Polish | Pending |

---

# Stage 0 — GitHub and Project Structure

## Goal

The goal of this stage is to create a clean and professional project repository.

Before writing any RTL code, the project must have a clear folder structure, documentation files, and a GitHub repository that can be used as a professional portfolio.

## What This Stage Achieves

This stage creates the foundation of the project.

It organizes the project into separate folders for RTL, testbenches, documentation, Vivado files, Vitis software, Python scripts, images, and reports.

## Why This Stage Is Important

A professional FPGA project is not only about code that works.

It must also be easy to understand, easy to navigate, and easy to review.  
A recruiter, engineer, lecturer, or interviewer should be able to open the GitHub repository and quickly understand what the project is, how it is organized, and what stage it is currently in.

## Why We Use GitHub

GitHub provides:

- Version control
- Backup
- Documentation visibility
- Project history
- A professional portfolio format

Each stage will be committed separately so the development process is clear.

## Main Tasks

- Create the `Data_Project` folder
- Create GitHub repository
- Create project folder structure
- Add `README.md`
- Add work plan document
- Add project checklist
- Add block diagram
- Make first commit
- Push to GitHub

## Project Folder Structure

```text
Data_Project/
├── docs/       Project documentation
├── images/     Block diagrams, waveforms and screenshots
├── python/     Python scripts for CSV and graphs
├── reports/    Timing, utilization and simulation reports
├── rtl/        Verilog RTL source files
├── tb/         Testbench files
├── vitis/      Vitis C software
├── vivado/     Vivado project files and block design notes
└── README.md
```

## Output of This Stage

A clean GitHub repository with basic documentation and project structure.

## Definition of Done

- `Data_Project` folder exists
- GitHub repository exists
- `README.md` exists
- Project folders exist
- Work plan exists
- Checklist exists
- First commit was completed
- Files were pushed to GitHub

---

# Stage 1 — Data Protocol

## Goal

The goal of this stage is to define the data format used by the system.

Before writing Verilog, the expected packet format must be clearly defined.  
This allows every future hardware block and testbench to be checked against a known expected result.

## What This Stage Achieves

This stage defines the system data packet:

```text
Header
Length
Data words
Checksum
```

It also defines what is considered a valid packet and what should be checked during simulation and software verification.

## Why This Stage Is Important

Hardware cannot be verified properly without a clear expected output.

If the packet format is not defined before writing RTL, it becomes difficult to know whether a simulation result is correct or incorrect.

This stage creates a reference document for later stages.

## Packet Format

The selected packet format is:

```text
Word 0: Header
Word 1: Length
Word 2: Data[0]
Word 3: Data[1]
...
Word N: Data[N-1]
Word N+1: Checksum
```

## Why We Use a Header

The header marks the beginning of a packet.

A receiver can use the header to detect where a valid packet starts.

In this project, the header is:

```text
0xA5A50001
```

This value is chosen because it is easy to recognize and unlikely to appear accidentally in simple test data.

## Why We Use Length

The length field tells the receiver how many data words are included in the packet.

This is important because the receiver needs to know how many payload words to expect before reaching the checksum.

## Why We Use Checksum

The checksum provides a simple way to verify that the data was transferred correctly.

In the first version of the project, the checksum is calculated as the sum of all data words.

A more advanced project could use CRC, but checksum is simpler and better for the first implementation.

## Initial Data Sequence

The first test data sequence is:

```text
1, 7, 8, 3, 6, 3
```

This sequence is short, simple, and easy to verify.

## Output of This Stage

A data protocol document:

```text
docs/data_protocol.md
```

## Definition of Done

- `DATA_WIDTH = 32` is defined
- Header is defined
- Length is defined
- Initial data sequence is defined
- Checksum calculation is defined
- Expected packet is defined
- PASS / FAIL criteria are defined
- Changes were committed and pushed to GitHub

---

# Stage 2 — Data Generator + Testbench

## Goal

The goal of this stage is to create the first Verilog RTL block in the project.

The Data Generator creates a known sequence of data words that will be used to test the rest of the system.

## What the Data Generator Does

The Data Generator produces a fixed sequence of 32-bit data words.

Initial sequence:

```text
1, 7, 8, 3, 6, 3
```

The block should generate one valid data word at a time and indicate when the data is valid.

## Why We Need This Block

At the beginning of the project, we do not use a real external data source such as UART, SPI, ADC, camera, or sensor.

Instead, we use an internal data generator so the system can be tested in a controlled way.

## Why We Chose a Data Generator

A Data Generator is useful because:

- It is simple to implement
- The expected output is known in advance
- It makes simulation easier
- It allows the rest of the pipeline to be tested before adding real communication
- It separates system development from external hardware problems

## Why Not Start with UART or SPI

UART and SPI are useful, but they add extra complexity.

If the system does not work, it would be harder to know whether the problem is in the communication interface or in the internal data path.

Starting with a Data Generator helps isolate and verify the internal system first.

## Main Signals

Expected conceptual inputs:

```text
clk
reset
start
```

Expected conceptual outputs:

```text
data_out
data_valid
done
index
```

## What This Block Teaches

This stage teaches:

- Basic Verilog module structure
- Clocked logic
- Reset behavior
- Counter or index usage
- Valid signal generation
- Done signal generation
- Basic testbench writing

## Testbench Goal

The testbench verifies that:

- The block resets correctly
- The `start` signal begins data generation
- The data appears in the correct order
- `data_valid` is asserted only when data is valid
- `done` is asserted after the last data word
- No extra data appears after completion

## Planned Files

```text
rtl/data_generator.v
tb/tb_data_generator.v
```

## Output of This Stage

A verified Data Generator block that produces a known data sequence.

## Definition of Done

- Purpose of the block is understood
- Inputs and outputs are defined
- `rtl/data_generator.v` is written
- `tb/tb_data_generator.v` is written
- Simulation passes
- Output sequence is verified
- Result is documented
- Changes are committed and pushed to GitHub

---

# Stage 3 — Packet Builder FSM + Testbench

## Goal

The goal of this stage is to create a finite state machine that converts raw data words into a structured packet.

## What the Packet Builder FSM Does

The Packet Builder receives data words from the Data Generator and outputs a complete packet:

```text
Header
Length
Data[0]
Data[1]
...
Checksum
```

## Why We Need This Block

In real systems, data is usually not transferred as random numbers without structure.

The receiver needs to know:

- Where the packet starts
- How many data words exist
- What the data values are
- Whether the data is valid

The Packet Builder creates this structure.

## Why We Use an FSM

Building a packet is a sequence of steps.

The block must:

1. Send Header
2. Send Length
3. Send each Data word
4. Calculate Checksum
5. Send Checksum
6. Finish the packet

This is naturally implemented using a finite state machine.

## Why Not Use Simple Combinational Logic

Packet building depends on time and order.

The block must remember which word should be sent next.  
This requires sequential logic and state.

A combinational-only design would not be suitable because it cannot manage the ordered sequence over multiple clock cycles.

## Suggested FSM States

```text
IDLE
SEND_HEADER
SEND_LENGTH
SEND_DATA
SEND_CHECKSUM
DONE
```

## What This Block Teaches

This stage teaches:

- FSM design
- State transitions
- Packet generation
- Output valid signal control
- Checksum accumulation
- Debugging using state signals

## Testbench Goal

The testbench verifies that:

- The FSM starts correctly
- The Header is sent first
- The Length is sent second
- Data words are sent in the correct order
- The Checksum is correct
- The done signal is asserted at the end
- No extra packet words are produced

## Planned Files

```text
rtl/packet_builder_fsm.v
tb/tb_packet_builder_fsm.v
```

## Output of This Stage

A verified FSM that converts data into a valid packet.

## Definition of Done

- FSM purpose is understood
- FSM states are defined
- RTL is written
- Testbench is written
- Simulation passes
- Header, Length, Data and Checksum are verified
- Changes are committed and pushed to GitHub

---

# Stage 4 — Sync FIFO + Testbench

## Goal

The goal of this stage is to create a synchronous FIFO buffer.

## What the Sync FIFO Does

FIFO means:

```text
First In, First Out
```

The first data word written into the FIFO is the first data word read out of it.

## Why We Need FIFO

The Packet Builder may produce data at one rate, while the next block may consume data at another rate.

A FIFO allows data to be stored temporarily so data is not lost when the consumer is not ready.

## Why We Use a FIFO

FIFO is a standard solution in digital systems for buffering data between two modules.

It helps decouple producer and consumer timing.

## Why Synchronous FIFO First

A synchronous FIFO uses one clock for both writing and reading.

This is simpler than Async FIFO and is a better first step before adding Clock Domain Crossing later.

## Main Concepts

The FIFO includes:

- Internal memory
- Write pointer
- Read pointer
- Count
- Full flag
- Empty flag
- Overflow indication
- Underflow indication

## What This Block Teaches

This stage teaches:

- Memory arrays in Verilog
- Pointers
- FIFO control logic
- Full and empty detection
- Overflow and underflow handling

## Testbench Goal

The testbench verifies:

- Normal write operation
- Normal read operation
- Data order preservation
- Full condition
- Empty condition
- Overflow behavior
- Underflow behavior

## Planned Files

```text
rtl/sync_fifo.v
tb/tb_sync_fifo.v
```

## Output of This Stage

A verified synchronous FIFO that stores and outputs data in the same order.

## Definition of Done

- FIFO purpose is understood
- RTL is written
- Testbench is written
- Write and read are verified
- Full and empty are verified
- Overflow and underflow are verified
- Changes are committed and pushed to GitHub

---

# Stage 5 — AXI-Stream Master + Testbench

## Goal

The goal of this stage is to create an AXI-Stream Master interface that can send data to AXI DMA.

## What the AXI-Stream Master Does

The AXI-Stream Master reads data from the FIFO and sends it using AXI-Stream signals:

```text
tdata
tvalid
tready
tlast
```

## Why We Need This Block

AXI DMA does not receive simple custom signals like `data_out` and `valid`.

It expects a standard AXI-Stream interface.

The AXI-Stream Master converts the internal FIFO output into a protocol that AXI DMA can accept.

## Why We Use AXI-Stream

AXI-Stream is a common streaming protocol used in FPGA systems, especially with DMA, video, DSP, and high-throughput data paths.

Using AXI-Stream makes the project more realistic and relevant to industry.

## Why Not Use Simple GPIO or Registers

GPIO or simple registers are not efficient for transferring large streams of data.

AXI-Stream is designed for continuous data movement and works directly with AXI DMA.

## Important Rule

A data word is transferred only when:

```text
tvalid = 1
tready = 1
```

If:

```text
tvalid = 1
tready = 0
```

then `tdata` must remain stable.

## What This Block Teaches

This stage teaches:

- AXI-Stream handshake
- Backpressure
- Valid-ready protocol
- End-of-packet indication using `tlast`
- Data stability during stalls

## Testbench Goal

The testbench verifies:

- Transfer when `tready = 1`
- Stall behavior when `tready = 0`
- `tdata` remains stable during backpressure
- `tlast` is asserted on the final word
- All words are transferred in the correct order

## Planned Files

```text
rtl/axis_stream_master.v
tb/tb_axis_stream_master.v
```

## Output of This Stage

A verified AXI-Stream Master ready to connect to AXI DMA.

## Definition of Done

- AXI-Stream purpose is understood
- RTL is written
- Testbench is written
- `tvalid`, `tready`, `tdata`, and `tlast` are verified
- Backpressure behavior is verified
- Changes are committed and pushed to GitHub

---

# Stage 6 — Full RTL Top Simulation

## Goal

The goal of this stage is to connect all RTL blocks together in simulation before using Vivado Block Design.

## What This Stage Connects

```text
Data Generator
    ↓
Packet Builder FSM
    ↓
Sync FIFO
    ↓
AXI-Stream Master
```

## Why This Stage Is Important

Before connecting to AXI DMA, DDR, and software, the custom RTL must be verified by itself.

If the full RTL pipeline works in simulation, then later hardware integration issues can be isolated more easily.

## Why We Simulate Before Hardware

Hardware debugging is harder than simulation debugging.

Simulation allows internal signals to be checked easily and helps verify logic correctness before using the FPGA board.

## Testbench Goal

The full testbench verifies:

- The whole system starts correctly
- The Data Generator outputs the expected sequence
- The Packet Builder creates the expected packet
- The FIFO preserves order
- The AXI-Stream Master outputs the full packet
- `tlast` is asserted correctly
- The output matches the expected packet

## Planned Files

```text
rtl/data_project_top.v
tb/tb_data_project_top.v
```

## Output of This Stage

A complete RTL-only system that works in simulation using one clock.

## Definition of Done

- All custom RTL blocks are connected
- Full RTL testbench is written
- Simulation passes
- Packet output is verified
- Changes are committed and pushed to GitHub

---

# Stage 7 — Vivado Block Design + AXI DMA + DDR

## Goal

The goal of this stage is to connect the custom RTL system to the Zynq Processing System, AXI DMA, and DDR memory.

## What This Stage Adds

This stage adds Xilinx IP blocks and integrates them with the custom RTL.

Main components:

- Zynq7 Processing System
- AXI DMA
- AXI Interconnect or SmartConnect
- Processor System Reset
- Custom RTL IP
- DDR memory through the PS

## Why We Need Zynq PS

The Processing System contains the ARM processor.

It will run the Vitis C program that controls DMA and verifies the data stored in DDR.

## Why We Need AXI DMA

AXI DMA transfers data from the FPGA fabric into DDR memory without the CPU manually copying every word.

This is the standard and efficient way to move streaming data from PL to DDR in a Zynq system.

## Why We Use DDR

DDR provides large memory storage for captured data.

The custom RTL can produce data, and the system can store it in DDR for software verification.

## Why No CDC Yet

At this stage, the system is kept simpler by using one clock domain where possible.

CDC is added later after the basic DMA and DDR flow is working.

## Output of This Stage

A Vivado Block Design that connects custom RTL to AXI DMA and DDR.

## Definition of Done

- Vivado project is created
- Block Design is created
- Zynq PS is added
- AXI DMA is added
- Custom RTL is connected
- Design validation passes
- Bitstream generation is possible
- Changes are committed and pushed to GitHub

---

# Stage 8 — Vitis C Verification

## Goal

The goal of this stage is to write software that runs on the ARM processor and verifies the data written into DDR.

## What the C Program Does

The Vitis C program:

- Initializes AXI DMA
- Defines a DDR buffer
- Starts the DMA transfer
- Waits for transfer completion
- Reads the DDR buffer
- Checks Header
- Checks Length
- Checks Data words
- Checks Checksum
- Prints PASS or FAIL

## Why We Need Software

The FPGA logic writes data into DDR, but the ARM processor is responsible for controlling DMA and verifying the result.

Without software, the system cannot be fully tested from PL to DDR.

## Why We Use Vitis C

Vitis is the standard development environment for software running on the Zynq Processing System.

C gives direct access to hardware drivers, memory addresses, and DMA control.

## Output of This Stage

A Vitis C application that verifies the DDR data and prints the result.

Expected output example:

```text
DMA transfer completed
Header OK
Length OK
Data OK
Checksum OK
Verification PASSED
```

## Definition of Done

- Vitis project is created
- DMA initialization code is written
- DDR buffer is defined
- DMA transfer completes
- DDR data is read
- Packet is verified
- PASS / FAIL is printed
- Changes are committed and pushed to GitHub

---

# Stage 9 — Async FIFO + CDC + Testbench

## Goal

The goal of this stage is to add safe Clock Domain Crossing using an Async FIFO.

## What CDC Means

CDC means:

```text
Clock Domain Crossing
```

It describes the problem of transferring data between two different clock domains.

## Why We Need CDC

In real FPGA systems, not all blocks always use the same clock.

For example:

```text
Data clock = 50 MHz
AXI clock  = 100 MHz
```

Data cannot simply be passed directly between unrelated clocks without protection.

## Why We Use Async FIFO

Async FIFO is a standard solution for transferring multi-bit data safely between two clock domains.

It allows writing using one clock and reading using another clock.

## Why Not Directly Connect Signals

Directly connecting a data bus between different clocks can cause metastability and incorrect data capture.

Async FIFO reduces this risk and provides a controlled crossing mechanism.

## What This Block Teaches

This stage teaches:

- Clock domain crossing
- Write clock and read clock
- Safe data transfer
- Full and empty flags in different domains
- CDC-aware testbench design

## Planned Files

```text
rtl/async_fifo.v
tb/tb_async_fifo.v
```

## Output of This Stage

A verified Async FIFO that safely transfers data between two clock domains.

## Definition of Done

- CDC problem is understood
- Async FIFO is written
- Testbench uses two clocks
- Data order is preserved
- Full and empty are verified
- Changes are committed and pushed to GitHub

---

# Stage 10 — Full Integration with CDC + DMA + DDR

## Goal

The goal of this stage is to integrate the Async FIFO into the full hardware system and verify the complete flow with CDC, AXI DMA, and DDR.

## Final Integrated Flow

```text
Data Generator
    ↓
Packet Builder FSM
    ↓
Async FIFO / CDC
    ↓
AXI-Stream Master
    ↓
AXI DMA
    ↓
DDR
    ↓
Vitis C Verification
```

## Why This Stage Is Important

This stage makes the project more similar to a real industrial FPGA system.

The design now includes:

- Custom RTL
- Packet logic
- CDC
- AXI-Stream
- AXI DMA
- DDR
- Software verification

## What Is Verified

The system verifies:

- Data crosses clock domains safely
- No data is lost
- No data is reordered
- No FIFO overflow occurs
- No FIFO underflow occurs
- DMA completes successfully
- DDR contains the expected packet
- Checksum is correct

## Output of This Stage

A full working hardware system with CDC, DMA, DDR, and software verification.

## Definition of Done

- Async FIFO is integrated
- Full system builds successfully
- DMA transfer works
- DDR data is verified
- PASS / FAIL is printed
- Changes are committed and pushed to GitHub

---

# Stage 11 — ILA and Vivado Reports

## Goal

The goal of this stage is to add hardware debugging and document engineering reports.

## What ILA Does

ILA stands for Integrated Logic Analyzer.

It allows internal FPGA signals to be observed while the design is running on real hardware.

## Why We Need ILA

In simulation, all internal signals are visible.

On real hardware, internal signals are not visible unless debug tools are added.

ILA allows important signals to be captured and checked.

## Signals to Probe

Possible ILA signals:

```text
tdata
tvalid
tready
tlast
fifo_empty
fifo_full
state
done
```

## Why We Document Reports

Vivado reports show how the design uses FPGA resources and whether timing is met.

Important reports:

- Timing summary
- Utilization report
- WNS
- LUT usage
- FF usage
- BRAM usage

## Output of This Stage

Hardware debug screenshots and Vivado reports.

## Definition of Done

- ILA is added
- Important signals are captured
- Timing report is saved
- Utilization report is saved
- Screenshots are saved
- Results are documented
- Changes are committed and pushed to GitHub

---

# Stage 12 — Python CSV / Graph

## Goal

The goal of this stage is to export and visualize the captured data.

## What Python Does

Python can:

- Read exported data
- Save data as CSV
- Plot the values on a graph
- Provide a visual result for the portfolio

## Why We Use Python

Python is simple, widely used, and excellent for data analysis and visualization.

It helps turn raw FPGA data into a clear visual result.

## Why This Stage Is Useful

A graph makes the project easier to understand.

Instead of only showing hexadecimal values, the project can show a clear output that demonstrates the complete data path.

## Output of This Stage

- CSV file
- Python script
- Graph image
- Documentation update

## Definition of Done

- CSV is created
- Python script is written
- Graph is generated
- Output is documented
- Changes are committed and pushed to GitHub

---

# Stage 13 — UART or SPI Extension

## Goal

The goal of this stage is to replace the internal Data Generator with a real communication source.

## Option A — UART Receiver

UART is useful because:

- It is simple
- It can be tested from a PC terminal
- It is common in embedded systems
- It is good for learning serial communication

## Option B — SPI Interface

SPI is useful because:

- It is common with sensors and ADCs
- It is faster than UART
- It is widely used in embedded hardware
- It requires clear FSM-based control

## Why This Stage Comes Later

Real communication adds complexity.

The internal data path should be verified first before adding an external communication interface.

This makes debugging much easier.

## Output of This Stage

A system that receives real external data instead of using only an internal generator.

## Definition of Done

- UART or SPI is selected
- Interface is implemented
- Testbench is written
- Real or simulated communication data is received
- System behavior is verified
- Changes are committed and pushed to GitHub

---

# Stage 14 — Portfolio Polish

## Goal

The goal of this stage is to prepare the project as a professional portfolio project.

## What This Stage Includes

This stage improves documentation, visual presentation, and explanation quality.

## Why This Stage Is Important

A good engineering project should be understandable to someone who did not build it.

The final repository should clearly show:

- What was built
- Why it was built
- What technologies were used
- How the system works
- What was verified
- What was learned

## Final Improvements

- Improve README
- Add final block diagram
- Add waveform screenshots
- Add ILA screenshots
- Add timing report summary
- Add utilization report summary
- Explain each RTL block
- Add lessons learned
- Add future improvements

## Output of This Stage

A complete and professional GitHub portfolio project.

## Definition of Done

- README is polished
- Documentation is complete
- Screenshots are added
- Reports are added
- Final project status is clear
- Repository is ready to share