# 4-bit Synchronous Up/Down Counter (RTL to GDSII)

A complete RTL-to-GDSII implementation of a **4-bit synchronous Up/Down Counter** using the standard digital IC design flow. The project covers the entire ASIC design process, including RTL design, functional verification, logic synthesis, floorplanning, placement, clock tree synthesis, routing, and GDSII generation.

---

## Project Overview

This project demonstrates the complete digital VLSI implementation of a **4-bit synchronous Up/Down Counter**, beginning with RTL design in Verilog and ending with the final GDSII layout. The design supports synchronous counting in both ascending and descending directions, controlled by a dedicated Up/Down control signal.

The project follows an industry-standard ASIC design flow, making it suitable for understanding the complete RTL-to-GDSII implementation process.

---

## Features

- 4-bit synchronous Up/Down counter
- Positive-edge triggered operation
- Synchronous reset
- Up and Down counting modes
- RTL simulation and functional verification
- Logic synthesis
- Floorplanning
- Standard cell placement
- Clock Tree Synthesis (CTS)
- Routing
- GDSII generation

---

## Design Specifications

| Parameter | Value |
|-----------|-------|
| Counter Width | 4-bit |
| Clock | Positive Edge Triggered |
| Reset | Synchronous |
| Counting Modes | Up / Down |
| Output | 4-bit Binary Count |

---

## Design Flow

```text
Specification
      │
      ▼
RTL Design (Verilog)
      │
      ▼
Functional Simulation
      │
      ▼
Logic Synthesis
      │
      ▼
Floorplanning
      │
      ▼
Placement
      │
      ▼
Clock Tree Synthesis
      │
      ▼
Routing
      │
      ▼
Physical Verification
      │
      ▼
GDSII Generation
```

---

## Tools Used

### RTL Design
- Verilog HDL

### Simulation
- Xilinx Vivado

### ASIC Physical Design
- Cadence Innovus

---

## Functional Description

The counter increments or decrements its value on every rising edge of the clock depending on the state of the Up/Down control signal.

| Up/Down | Operation |
|----------|-----------|
| 1 | Count Up |
| 0 | Count Down |

The counter supports synchronous reset, allowing all output bits to be reset simultaneously on the active clock edge.

---

## ASIC Implementation Stages

- RTL Design
- Functional Verification
- Logic Synthesis
- Floorplanning
- Standard Cell Placement
- Clock Tree Synthesis
- Routing
- Physical Verification
- GDSII Generation

---

## Applications

- Digital Counters
- Frequency Dividers
- Timing Circuits
- Embedded Digital Systems
- ASIC Design Learning
- FPGA Prototyping

---

## Future Improvements

- Parameterized N-bit counter
- Load Enable functionality
- Asynchronous reset option
- Gray Code Counter
- Johnson Counter implementation
- Ring Counter implementation

---

## Author

**Nisarg Adhvaryu**

B.Tech Electronics & Communication Engineering  
Pandit Deendayal Energy University (PDEU)
