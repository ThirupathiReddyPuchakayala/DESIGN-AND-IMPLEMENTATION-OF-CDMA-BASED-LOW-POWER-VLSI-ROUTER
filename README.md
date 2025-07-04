# DESIGN-AND-IMPLEMENTATION-OF-CDMA-BASED-LOW-POWER-VLSI-ROUTER
# CDMA-Based VLSI Router for Network-on-Chip (NoC)

A high-performance, low-latency router architecture for Network-on-Chip (NoC) systems based on Code Division Multiple Access (CDMA), implemented using Verilog HDL and deployed on an Artix-7 FPGA.

## 🚀 Project Overview

Traditional NoC architectures face limitations in latency, scalability, and bandwidth utilization due to overheads in TDMA/SDMA arbitration. This project proposes a CDMA-based router that enables concurrent, collision-free data transfer using overloaded spreading codes, making it ideal for modern multi-core SoC platforms.

## 🎯 Objectives

- Reduce latency and congestion in on-chip communication
- Enable parallel data transfers via CDMA spreading and decoding
- Improve bandwidth utilization under dynamic traffic conditions
- Design scalable and synthesizable Verilog modules compatible with FPGA

## 🧩 Features

- 🧬 **CDMA Encoder/Decoder** using Walsh-Hadamard codes
- 🧠 **Round Robin Arbiter** for fair scheduling
- 📦 **FIFO Buffers** for congestion control
- 🔀 **Crossbar Switch** with dynamic routing logic
- 🔧 **RTL Simulation and FPGA Synthesis** using Xilinx Vivado
- 📈 **Performance Gains** over TDMA: 25–30% latency reduction, improved throughput

## 🛠️ Technologies Used

- Verilog HDL
- Xilinx Vivado & ISE
- Artix-7 XC7A200T FPGA
- FPGA-based functional verification

## 📊 Performance Highlights

| Metric              | TDMA Router | CDMA Router |
|---------------------|-------------|-------------|
| Latency             | High        | Low         |
| Power Consumption   | 4.42 W      | 2.988 W     |
| Area (LUTs)         | 42          | 15          |
| Max Delay (ns)      | 10.08       | 6.033       |

## 🧪 Getting Started

1. Clone this repo  
   ```bash
    git clone https://github.com/ThirupathiReddyPuchakayala/DESIGN-AND-IMPLEMENTATION-OF-CDMA-BASED-LOW-POWER-VLSI-ROUTER.git
    cd DESIGN-AND-IMPLEMENTATION-OF-CDMA-BASED-LOW-POWER-VLSI-ROUTER
2.Open project in Vivado
3.Run synthesis and generate bitstream
4.Load bitstream via JTAG to Artix-7 FPGA
5.Observe simulation and waveform outputs

## 📂 Project Structure
├── src/              # Verilog source code
├── testbench/        # Testbench modules
├── docs/             # Design documentation
├── reports/          # Synthesis and simulation results
└── README.md

## 📖 Citation
If you use or reference this project in your work, please cite it appropriately:
Thirupathi Reddy Puchakayala, "CDMA-Based VLSI Router for Network-on-Chip," 2025.

## 💡 Future Scope
1.Adaptive code allocation
2.Machine learning-based traffic routing
3.ASIC migration for commercial deployment
