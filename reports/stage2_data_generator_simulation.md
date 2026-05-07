# Stage 2 — Data Generator Simulation Report

## 1. Overview

This report documents the simulation results of **Stage 2 — Data Generator + Testbench** in the `Data_Project`.

In this stage, a custom Verilog RTL block named `data_generator` was designed and verified using a dedicated testbench.  
This is the first functional RTL block in the project and serves as the controlled internal data source for the system.

The purpose of this stage is to verify that the FPGA logic can generate a known sequence of 32-bit data words in the correct order, using a simple valid/ready handshake.

---

## 2. Purpose of the Data Generator

The `data_generator` block acts as an internal source of data.

Instead of using an external source such as UART, SPI, a camera, a sensor, or another peripheral, this block generates a fixed and known sequence of data words inside the FPGA logic.

This approach is useful because it gives full control over the input data during the early stages of the project.

The expected data sequence is:

```text
1, 7, 8, 3, 6, 3
```

The goal is not to sort or process the data.  
The goal is to verify that the data is generated correctly and can later be transferred through the rest of the system without being lost, reordered, or corrupted.

In later stages, this block will connect to the following system chain:

```text
Data Generator
→ Packet Builder FSM
→ FIFO
→ AXI-Stream Master
→ AXI DMA
→ DDR
→ Vitis C Verification
→ Python CSV / Graph
```

---

## 3. Files Used in This Stage

### RTL File

```text
rtl/data_generator.v
```

This file contains the Verilog implementation of the `data_generator` RTL block.

### Testbench File

```text
tb/tb_data_generator.v
```

This file contains the simulation environment used to test the `data_generator`.

### Waveform Image

```text
images/stage2_data_generator_waveform.png
```

This image contains the waveform result from the Vivado behavioral simulation.

---

## 4. Block Interface

The `data_generator` block uses a simple interface based on clock, reset, start control, and valid/ready handshake signals.

### Input Signals

| Signal | Width | Description |
|---|---:|---|
| `clk` | 1 bit | System clock |
| `rst` | 1 bit | Synchronous active-high reset |
| `start` | 1 bit | Starts the data generation process |
| `data_ready` | 1 bit | Indicates that the next block is ready to receive data |

### Output Signals

| Signal | Width | Description |
|---|---:|---|
| `data_out` | 32 bits | The generated output data word |
| `data_valid` | 1 bit | Indicates that `data_out` contains valid data |
| `done` | 1 bit | Indicates that all data words were transmitted |

---

## 5. Internal Signals

The block uses internal signals to manage the data generation process.

### `active`

The `active` signal is an internal control flag.

It indicates whether the block is currently transmitting data or waiting for a new start command.

```text
active = 0 → The block is idle
active = 1 → The block is transmitting data
```

This signal is not an output of the module.  
It is used only inside the `data_generator` block.

### `word_index`

The `word_index` signal is an internal counter that tracks which data word is currently being transmitted.

The expected sequence is mapped as follows:

| `word_index` | Expected Data |
|---:|---:|
| 0 | 1 |
| 1 | 7 |
| 2 | 8 |
| 3 | 3 |
| 4 | 6 |
| 5 | 3 |

Since the sequence contains 6 words, the parameter `NUM_WORDS` is set to:

```text
NUM_WORDS = 6
```

The last valid index is therefore:

```text
NUM_WORDS - 1 = 5
```

---

## 6. Valid / Ready Handshake

The block uses a basic valid/ready handshake.

This handshake is important because it prepares the design for future stages such as FIFO, AXI-Stream, DMA, and DDR transfers.

| Signal | Controlled By | Meaning |
|---|---|---|
| `data_valid` | Data Generator | Indicates that the current value on `data_out` is valid |
| `data_ready` | Next block / Testbench | Indicates that the receiver is ready to accept data |

A data word is considered transferred only when both signals are high:

```text
data_valid = 1
data_ready = 1
```

This behavior prevents data loss when the receiving block is not ready.

In this simulation, `data_ready` was kept high after reset, meaning the receiver was always ready to accept data.

---

## 7. Simulation Scenario

The testbench performs the following sequence:

1. Initializes all input signals.
2. Applies reset.
3. Releases reset.
4. Sets `data_ready = 1`.
5. Sends a short `start` pulse.
6. Waits for the `data_generator` to output all data words.
7. Checks that the data sequence appears in the expected order.
8. Observes that `done` is asserted after the final data word.

---

## 8. Expected Behavior

After reset is released and `start` is asserted, the `data_generator` should begin transmitting the following 32-bit data sequence:

```text
00000001
00000007
00000008
00000003
00000006
00000003
```

This corresponds to:

```text
1 → 7 → 8 → 3 → 6 → 3
```

During data transmission:

- `data_valid` should be high.
- `data_out` should contain the expected data word.
- `done` should remain low.
- The block should advance to the next word only when `data_ready` is high.
- After the final word is transmitted, `done` should go high.
- After completion, `data_valid` should go low.

---

## 9. Simulation Waveform

The following waveform shows the Vivado behavioral simulation result:

![Stage 2 Data Generator Waveform](../images/stage2_data_generator_waveform.png)

---

## 10. Simulation Result

The simulation passed successfully.

The waveform shows that after `start` is asserted, the `data_generator` outputs the expected sequence:

```text
1 → 7 → 8 → 3 → 6 → 3
```

The signal `data_valid` is high while valid data is present on `data_out`.

After the final data word is transmitted, the `done` signal is asserted and `data_valid` is deasserted.

This confirms that the `data_generator` produces the correct data sequence and properly indicates the end of transmission.

---

## 11. PASS / FAIL Criteria

| Check | Expected Result | Status |
|---|---|---|
| Reset behavior | Outputs and internal state are cleared | PASS |
| Start behavior | Transmission starts after `start` is asserted | PASS |
| First data word | First output is `1` | PASS |
| Data sequence | Output sequence is `1, 7, 8, 3, 6, 3` | PASS |
| Data order | Data appears in the correct order | PASS |
| `data_valid` behavior | High while data is valid | PASS |
| `done` behavior | High after the final word | PASS |
| Basic handshake | Data advances while `data_ready` is high | PASS |

---

## 12. Notes

This simulation verifies the basic case where `data_ready` remains high during the full transmission.

A more advanced test can be added later to verify backpressure behavior.  
In that test, `data_ready` will be forced low during transmission to confirm that the `data_generator` holds the current data word and does not advance until the receiver is ready again.

This will be important when connecting the block to FIFO and AXI-Stream logic.

---

## 13. Conclusion

Stage 2 was completed successfully.

The `data_generator` RTL block correctly generates the expected 32-bit data sequence and uses a basic valid/ready handshake.

The block is now ready to be used as the input source for the next project stage:

```text
Stage 3 — Packet Builder FSM + Testbench
```

In the next stage, the generated data will be wrapped into a structured packet containing:

```text
Header
Length
Data
Checksum
```

This will introduce a more complete finite state machine and move the project closer to a realistic FPGA data-transfer system.

---

## 14. Stage Status

```text
Stage 2 — Data Generator + Testbench: PASS
```