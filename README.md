
# Integrated Secure Data Encryption using AXI-Stream and PRESENT Algorithm

## Overview
This project focuses on developing a secure data encryption module using the **AXI4-Stream protocol** and the **PRESENT-80 encryption algorithm**. Implemented on the **Nexys 7 FPGA platform**, this module aims to protect data during transmission by leveraging AXI4-Stream for efficient data handling and the PRESENT algorithm for lightweight encryption.
---

## Introduction
With the rise of connected devices, ensuring secure data transmission in embedded systems has become crucial. This project integrates the **PRESENT-80** algorithm with the **AXI4-Stream interface** to create a versatile encryption module that secures data transmission across digital systems. The PRESENT-80 algorithm, known for its lightweight structure and efficiency, was selected due to its suitability for resource-constrained environments.

## Motivation
Integrating **AXI4-Stream** with **PRESENT-80 encryption** simplifies data connectivity and enhances interoperability within digital systems. This project demonstrates how leveraging a compact, efficient encryption algorithm with a standardized interface protocol can improve security, reduce power consumption, and streamline data transmission processes.

## Objectives
- Understand the structure and functionality of the PRESENT-80 encryption algorithm.
- Adapt the PRESENT-80 encryption for the Nexys 7 FPGA, optimizing for hardware implementation.
- Optimize resource utilization, power consumption, and performance on FPGA.
- Ensure safe operation by controlling power and temperature within hardware constraints.

## System Design
The project employs a functional block architecture with the following primary components:

- **AXI4-Stream Data FIFO**: Buffers data for smooth flow through the encryption module.
- **SIPO (Serial In Parallel Out) Register**: Converts serial data to 64-bit parallel data for encryption.
- **PISO (Parallel In Serial Out) Register**: Converts 64-bit encrypted data back to serial format.
- **PRESENT-80 Encryption Core**: Implements the encryption algorithm with the AXI4-Stream interface.

The functional block diagram depicts data entering the module via AXI4-Stream, being processed through the encryption core, and outputting through the same protocol.

## Implementation Details
- **Programming Language**: Verilog
- **Development Tool**: Xilinx Vivado 2023.2
- **FPGA Platform**: Nexys 7
- **Encryption**: PRESENT-80 algorithm, a lightweight, 64-bit block cipher with 80-bit keys.

### Flowchart
The implementation flow includes:
1. **Data input** via AXI FIFO,
2. Conversion to **64-bit data via SIPO**,
3. **Encryption via PRESENT-80**, and
4. Conversion back to serial data via **PISO**.

The design optimally minimizes pin usage and IO resources, reducing power consumption and increasing efficiency.

## Optimization
The system was optimized for resource and power efficiency:

- **Data FIFO Buffering**: Reduces IO pin requirements, significantly lowering power consumption.
- **Pipeline Design**: Enhances throughput by balancing stages for concurrent encryption processes.
- **Resource Sharing**: Minimizes the FPGA footprint, allowing shared use of resources like memory and processing units.
- **Power Management**: Reduced from over 70W to under 10W by streamlining data processing.

## Results and Discussions
- **Performance**: Achieved encryption within **1.4µs** at 100MHz clock frequency, enabling use in real-time applications.
- **Power Consumption**: Reduced on-chip power to **9.486W**, ensuring safe operational temperatures (junction temperature 68.3°C).
- **Resource Utilization**:
  - **LUT**: 0.51%
  - **LUTRAM**: 0.08%
  - **FF**: 0.43%
  - **IO**: 13.33%

These results confirm that the system meets performance and safety requirements for time-sensitive and resource-constrained environments.

## Conclusion and Future Scope
This project successfully implements a secure and efficient encryption solution using **PRESENT-80** with **AXI4-Stream** on FPGA. The design provides a robust, low-power solution suitable for applications requiring real-time data security, such as automotive ECUs, IoT devices, and secure communications.

### Future Improvements
- Implement dynamic key inputs to enhance security.
- Explore parallel processing for high-throughput applications.
- Adapt the design for use with advanced algorithms like AES for applications demanding higher security levels.
