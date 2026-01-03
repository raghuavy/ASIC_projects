ASIC PROJECTS

This repository contains a collection of small ASIC design projects and experiments exploring the digital RTL-to-GDSII flow using open-source EDA tools. The goal is to build a solid, industry-relevant understanding of ASIC design concepts without relying on proprietary software.

------------------------------------------------------------

OVERVIEW

ASIC (Application-Specific Integrated Circuit) design involves translating a digital design from a hardware description language (HDL) into a manufacturable physical layout. This repository documents that process end-to-end using Verilog, simulation, logic synthesis, and physical design flows.

The projects here serve as:
- a learning resource
- a personal reference
- a portfolio demonstrating transferable ASIC design skills

------------------------------------------------------------

REPOSITORY STRUCTURE

ASIC_projects/
|
|-- counter_project/
|   |-- counter.v              (Verilog RTL)
|   |-- counter_tb.v           (Testbench)
|   |-- synth.ys               (Yosys synthesis script)
|   |-- counter.vcd            (Simulation waveform output)
|   |-- counter_synth.v        (Gate-level netlist)
|
|-- OpenLane/
|   |-- designs/
|       |-- counter/
|           |-- config.json    (OpenLane configuration)
|           |-- runs/          (Reports and layout results)
|
|-- README

------------------------------------------------------------

TOOLS USED

- Verilog / SystemVerilog
- Icarus Verilog (iverilog, vvp)
- GTKWave
- Yosys
- OpenROAD / OpenLane
- Magic
- KLayout

------------------------------------------------------------

USAGE

Simulation:
iverilog -o sim counter.v counter_tb.v
vvp sim

Synthesis:
yosys synth.ys

Full ASIC Flow (OpenLane):
flow.tcl -design counter

This runs synthesis, floorplanning, placement, routing, and produces GDSII along with timing and area reports.

------------------------------------------------------------

LEARNING GOALS

This repository focuses on:
- RTL design and verification
- Logic synthesis and gate-level mapping
- Running a complete RTL-to-GDSII flow
- Reading timing, area, and physical design reports
- Developing intuition for ASIC design tradeoffs

The concepts demonstrated here are directly transferable to commercial ASIC toolchains (e.g., Cadence-based flows).

------------------------------------------------------------

NOTES

- All projects use open-source tools and open PDKs
- The emphasis is on understanding and debugging the flow, not just generating outputs
- Designs may be expanded and iterated over time

------------------------------------------------------------

LICENSE

License to be added.
