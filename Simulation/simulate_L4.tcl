#Simple tcl script for simulating HDL on Mentor Modelsim
#atino@sfu.ca
vsim aes128keyTB 
add wave -radix hex {/aes128keyTB/reset} {/aes128keyTB/clock} {/aes128keyTB/empty} {/aes128keyTB/load} {/aes128keyTB/key} {/aes128keyTB/plain} {/aes128keyTB/ready} {/aes128keyTB/cipher} 
restart -f ; run 1000 ns

