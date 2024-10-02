# AMBA APB Protocol with UART as Slave on FPGA

## Project Overview

This project demonstrates the design and implementation of the AMBA APB (Advanced Peripheral Bus) protocol with UART (Universal Asynchronous Receiver-Transmitter) functioning as a slave device on an FPGA board. The APB protocol is part of the AMBA architecture, typically used for low bandwidth peripherals. The goal of the project is to achieve seamless communication between a master and a UART slave over the APB protocol, running on a hardware platform (FPGA).

## Features

- **AMBA APB Protocol Implementation**: A simplified APB master and slave architecture.
- **UART as APB Slave**: UART module designed as a slave peripheral, responding to the APB master.
- **APB Master**: Interface to control the UART via read/write operations.
- **Verilog/VHDL Code**: Written for FPGA synthesis.
- **Testbench for Simulation**: Provides a testbench for functional verification.
- **FPGA Support**: Synthesized for FPGA implementation and real-time testing.

## Block Diagram

The following block diagram illustrates the design of the APB master-slave communication system with the UART as a slave.

```
+-----------------+      +------------------+
|                 |      |                  |
|   APB Master    |<---->|  UART APB Slave   |
|                 |      |                  |
+-----------------+      +------------------+
```

### Functional Components:

1. **APB Master**: Generates APB read/write signals and sends commands to UART slave.
2. **APB Slave (UART)**: Receives data from the master, performs UART communication, and sends data back to the master.

## Getting Started

### Prerequisites

To get started with this project, you'll need the following:

- **FPGA Board**: Any FPGA board that supports Verilog/VHDL synthesis (e.g., Xilinx, Altera).
- **Vivado/Quartus**: For synthesizing and implementing the design on the FPGA.
- **UART Peripheral**: For external communication with the FPGA via a UART terminal.

### Project Structure

```plaintext
├── src/
│   ├── apb_master.v          # APB Master Design
│   ├── uart_apb_slave.v      # UART APB Slave Design
│   ├── uart_tx.v             # UART Transmit Module
│   ├── uart_rx.v             # UART Receive Module
│   ├── apb_interface.v       # APB Interface between master and slave
│   └── testbench.v           # Testbench for simulation
├── constraints/
│   └── constraints.xdc       # FPGA pin constraints
├── sim/
│   └── testbench_tb.v        # Testbench to verify the functionality
└── README.md                 # Project documentation
```

### How to Run

1. **Clone the Repository**:

    ```bash
    git clone https://github.com/your-username/amba-apb-uart-fpga.git
    cd amba-apb-uart-fpga
    ```

2. **Open the Project**:
   - Open your preferred FPGA IDE (Vivado for Xilinx or Quartus for Intel FPGAs).
   - Create a new project and add the `src/` files to your project.
   - Add the constraints file located in `constraints/` to map the UART pins.

3. **Synthesize and Implement**:
   - Run the synthesis and implementation process in the FPGA tool.
   - Make sure to map the UART pins to the correct FPGA I/O pins in the constraints file.

4. **Program the FPGA**:
   - Connect your FPGA to the host system.
   - Program the FPGA with the generated bitstream.

5. **Test the UART Communication**:
   - Connect a UART terminal (e.g., PuTTY, Tera Term) to the FPGA's UART pins.
   - Perform read and write operations via the UART to see the APB protocol in action.

### Simulation

The project includes a testbench for functional simulation. You can simulate the design using your FPGA tool to verify its correctness before deployment. Run the following commands in your simulator environment:


### FPGA Board

This project was tested and verified on a VAAMAN a EFINIX FPGA baord. Make sure to adjust the I/O pin configurations in the constraints file according to your board.

## Future Work

- Extend support to additional peripherals such as SPI, I2C.
- Add DMA integration to handle high-speed data transfers.
- Implement error handling and parity checking for UART communication.

## Contributing

Contributions are welcome! If you would like to add new features or optimize existing ones, feel free to submit a pull request.

## License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.
```

---

You can copy-paste this into your `README.md` file in the GitHub repository and make edits as necessary to fit your project specifics.
