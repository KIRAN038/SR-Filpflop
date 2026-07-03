# SR Flip-Flop using Verilog HDL

## Overview

This project implements a positive-edge triggered SR (Set-Reset) Flip-Flop using Verilog HDL. The flip-flop is a sequential logic circuit that stores one bit of data. The output changes only on the rising edge of the clock signal and follows the SR truth table. The design was verified using a Verilog testbench and simulated with Icarus Verilog. The output waveform was analyzed using GTKWave.

---

## Objective

The objective of this project is to understand the design and verification of sequential circuits using Verilog HDL by implementing a synchronous SR Flip-Flop.

---

## Features

- Positive-edge triggered SR Flip-Flop
- Behavioral modeling in Verilog HDL
- Supports Hold, Set, Reset, and Invalid operations
- Verilog testbench for functional verification
- Waveform generation using GTKWave
- Beginner-friendly RTL design project

---

## Inputs and Output

| Signal | Width | Description |
|---------|------|-------------|
| clk | 1-bit | Clock signal |
| s | 1-bit | Set input |
| r | 1-bit | Reset input |
| q | 1-bit | Flip-Flop output |

---

## Working Principle

The output of the SR Flip-Flop changes only on the positive edge of the clock.

- **S = 0, R = 0:** The flip-flop holds its previous output.
- **S = 0, R = 1:** The output is reset to logic 0.
- **S = 1, R = 0:** The output is set to logic 1.
- **S = 1, R = 1:** This is an invalid state, so the output becomes unknown (`1'bx`) during simulation.

---

## Truth Table

| Clock | S | R | Q(next) | Operation |
|:-----:|:-:|:-:|:-------:|-----------|
| ↑ | 0 | 0 | Q(previous) | Hold |
| ↑ | 0 | 1 | 0 | Reset |
| ↑ | 1 | 0 | 1 | Set |
| ↑ | 1 | 1 | X | Invalid State |

---

## Project Structure

```
SR-Flip-Flop/
│── sr_ff.v
│── sr_ff_tb.v
│── sr_ff.vcd
│── waveform.png
└── README.md
```

---

## Tools Used

- Verilog HDL
- Icarus Verilog
- GTKWave
- Visual Studio Code

---

## Simulation Steps

### Compile

```bash
iverilog -o sr_sim sr_ff.v sr_ff_tb.v
```

### Run

```bash
vvp sr_sim
```

### Open Waveform

```bash
gtkwave sr_ff.vcd
```

---

## Expected Output

The waveform verifies that the SR Flip-Flop correctly performs all four operations:
- Hold
- Reset
- Set
- Invalid State

The output changes only on the positive edge of the clock.

---

## Applications

- Registers
- Counters
- Finite State Machines (FSM)
- Memory Elements
- Control Units
- Digital Sequential Circuits

---

## Learning Outcomes

Through this project, I learned:
- Difference between combinational and sequential circuits.
- Positive-edge triggered sequential logic.
- Behavioral modeling in Verilog HDL.
- Writing Verilog testbenches.
- Clock generation in testbenches.
- Functional verification using simulation.
- Waveform analysis using GTKWave.

---

## Author

**Chakkati Kiran Kumari**

GitHub: https://github.com/KIRAN038
