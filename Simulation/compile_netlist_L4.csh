# Simple script for compiling a vhdl file for simulation
# fcampi@sfu.ca

# Cleaning the work folder (This should not be done if compiling incrementally)
\rm -rf work

# Creating and mapping to logic name work the local work library
vlib work
vmap work work

# Compiling the VHDL code for simulation
vlog /CMC/setups/ensc450/SOCLAB/LIBRARIES/NangateOpenCellLibrary_PDKv1_3_v2010_12/Front_End/Verilog/NangateOpenCellLibrary.v
vlog /ensc/cmc_homedirs/escmc29/ensc450/ENSC450phase4/BE_045/results/verilog/aes128key.final.v
vcom ../vhdl/aes128keyTB.vhd 

