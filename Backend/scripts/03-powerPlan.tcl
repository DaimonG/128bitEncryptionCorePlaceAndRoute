# Create Floorplan (45 nm)
# # floorPlan -su <aspectRatio> [<stdCellDensity> [<coreToLeft> <coreToBottom> <coreToRight> <coreToTop>]]
#
 floorPlan -su 1  0.9  4 4 4 4
# #will overwrite your Innvous command
#
 editPin -fixedPin 1 -snap TRACK -side Top -unit TRACK -layer 2 -spreadType center -spacing 5.0 \
         -pin {reset load {key[0]} {key[1]} {key[2]} {key[3]} {key[4]} {key[5]} {key[6]} {key[7]} {key[8]} {key[9]} {key[10]} {key[11]} {key[12]} {key[13]} {key[14]} {key[15]} {key[16]} {key[17]} {key[18]} {key[19]} {key[20]} {key[21]} {key[22]} {key[23]} {key[24]} {key[25]} {key[26]} {key[27]} {key[28]} {key[29]} {key[30]} {key[31]} {key[32]} {key[33]} {key[34]} {key[35]} {key[36]} {key[37]} {key[38]} {key[39]} {key[40]} {key[41]} {key[42]} {key[43]} {key[44]} {key[45]} {key[46]} {key[47]} {key[48]} {key[49]} {key[50]} {key[51]} {key[52]} {key[53]} {key[54]} {key[55]} {key[56]} {key[57]} {key[58]} {key[59]} {key[60]} {key[61]} {key[62]} {key[63]} {key[64]} {key[65]} {key[66]} {key[67]} {key[68]} {key[69]} {key[70]} {key[71]} {key[72]} {key[73]} {key[74]} {key[75]} {key[76]} {key[77]} {key[78]} {key[79]} {key[80]} {key[81]} {key[82]} {key[83]} {key[84]} {key[85]} {key[86]} {key[87]} {key[88]} {key[89]} {key[90]} {key[91]} {key[92]} {key[93]} {key[94]} {key[95]} {key[96]} {key[97]} {key[98]} {key[99]} {key[100]} {key[101]} {key[102]} {key[103]} {key[104]} {key[105]} {key[106]} {key[107]} {key[108]} {key[109]} {key[110]} {key[111]} {key[112]} {key[113]} {key[114]} {key[115]} {key[116]} {key[117]} {key[118]} {key[119]} {key[120]} {key[121]} {key[122]} {key[123]} {key[124]} {key[125]} {key[126]} {key[127]} {plain[0]} {plain[1]} {plain[2]} {plain[3]} {plain[4]} {plain[5]} {plain[6]} {plain[7]} {plain[8]} {plain[9]} {plain[10]} {plain[11]} {plain[12]} {plain[13]} {plain[14]} {plain[15]} {plain[16]} {plain[17]} {plain[18]} {plain[19]} {plain[20]} {plain[21]} {plain[22]} {plain[23]} {plain[24]} {plain[25]} {plain[26]} {plain[27]} {plain[28]} {plain[29]} {plain[30]} {plain[31]} {plain[32]} {plain[33]} {plain[34]} {plain[35]} {plain[36]} {plain[37]} {plain[38]} {plain[39]} {plain[40]} {plain[41]} {plain[42]} {plain[43]} {plain[44]} {plain[45]} {plain[46]} {plain[47]} {plain[48]} {plain[49]} {plain[50]} {plain[51]} {plain[52]} {plain[53]} {plain[54]} {plain[55]} {plain[56]} {plain[57]} {plain[58]} {plain[59]} {plain[60]} {plain[61]} {plain[62]} {plain[63]} {plain[64]} {plain[65]} {plain[66]} {plain[67]} {plain[68]} {plain[69]} {plain[70]} {plain[71]} {plain[72]} {plain[73]} {plain[74]} {plain[75]} {plain[76]} {plain[77]} {plain[78]} {plain[79]} {plain[80]} {plain[81]} {plain[82]} {plain[83]} {plain[84]} {plain[85]} {plain[86]} {plain[87]} {plain[88]} {plain[89]} {plain[90]} {plain[91]} {plain[92]} {plain[93]} {plain[94]} {plain[95]} {plain[96]} {plain[97]} {plain[98]} {plain[99]} {plain[100]} {plain[101]} {plain[102]} {plain[103]} {plain[104]} {plain[105]} {plain[106]} {plain[107]} {plain[108]} {plain[109]} {plain[110]} {plain[111]} {plain[112]} {plain[113]} {plain[114]} {plain[115]} {plain[116]} {plain[117]} {plain[118]} {plain[119]} {plain[120]} {plain[121]} {plain[122]} {plain[123]} {plain[124]} {plain[125]} {plain[126]} {plain[127]}} 
editPin -fixedPin 1 -snap TRACK -side Bottom -use TIELOW -unit TRACK -layer 2 -spreadType center -spacing 10.0 \
        -pin {empty ready {cipher[0]} {cipher[1]} {cipher[2]} {cipher[3]} {cipher[4]} {cipher[5]} {cipher[6]} {cipher[7]} {cipher[8]} {cipher[9]} {cipher[10]} {cipher[11]} {cipher[12]} {cipher[13]} {cipher[14]} {cipher[15]} {cipher[16]} {cipher[17]} {cipher[18]} {cipher[19]} {cipher[20]} {cipher[21]} {cipher[22]} {cipher[23]} {cipher[24]} {cipher[25]} {cipher[26]} {cipher[27]} {cipher[28]} {cipher[29]} {cipher[30]} {cipher[31]} {cipher[32]} {cipher[33]} {cipher[34]} {cipher[35]} {cipher[36]} {cipher[37]} {cipher[38]} {cipher[39]} {cipher[40]} {cipher[41]} {cipher[42]} {cipher[43]} {cipher[44]} {cipher[45]} {cipher[46]} {cipher[47]} {cipher[48]} {cipher[49]} {cipher[50]} {cipher[51]} {cipher[52]} {cipher[53]} {cipher[54]} {cipher[55]} {cipher[56]} {cipher[57]} {cipher[58]} {cipher[59]} {cipher[60]} {cipher[61]} {cipher[62]} {cipher[63]} {cipher[64]} {cipher[65]} {cipher[66]} {cipher[67]} {cipher[68]} {cipher[69]} {cipher[70]} {cipher[71]} {cipher[72]} {cipher[73]} {cipher[74]} {cipher[75]} {cipher[76]} {cipher[77]} {cipher[78]} {cipher[79]} {cipher[80]} {cipher[81]} {cipher[82]} {cipher[83]} {cipher[84]} {cipher[85]} {cipher[86]} {cipher[87]} {cipher[88]} {cipher[89]} {cipher[90]} {cipher[91]} {cipher[92]} {cipher[93]} {cipher[94]} {cipher[95]} {cipher[96]} {cipher[97]} {cipher[98]} {cipher[99]} {cipher[100]} {cipher[101]} {cipher[102]} {cipher[103]} {cipher[104]} {cipher[105]} {cipher[106]} {cipher[107]} {cipher[108]} {cipher[109]} {cipher[110]} {cipher[111]} {cipher[112]} {cipher[113]} {cipher[114]} {cipher[115]} {cipher[116]} {cipher[117]} {cipher[118]} {cipher[119]} {cipher[120]} {cipher[121]} {cipher[122]} {cipher[123]} {cipher[124]} {cipher[125]} {cipher[126]} {cipher[127]}}
       #pay attention: tielow is used for outputs only. That is, if the output does not generate a value, it is grounded
#
#
#                 # Building a Power Ring for Vdd / Vdds, extending top/bottom segments to create pins
#                 # From the LEF file we know that M9 and M10 are the highest metals, and that the min width of the metals
#                 # Considering this is a core, to be used in an SoC, we will use medium metals
#                 # Since the core area is small, we dont expect huge power consumption, IR drops etc so we keep it at pitch.
#                 # Note that in the foorplan we must reserve enough space between core (rows) and pins to build rings
#
#
addRing -nets {VDD VSS} -width 0.6 -spacing 0.5 \
       -layer [list top 7 bottom 7 left 6 right 6]

#hookup the rings with stripes
addStripe -nets {VSS VDD} -layer 6 -direction vertical -width 0.4 -spacing 0.5 -set_to_set_distance 5 

addStripe -nets {VSS VDD} -layer 7 -direction horizontal -width 0.4 -spacing 0.5 -set_to_set_distance 5 

sroute -connect { blockPin corePin floatingStripe } -routingEffort allowShortJogs  -nets {VDD VSS}
defOut -floorplan -noStdCells results/aes_floor.def
saveDesign ./DBS/03-floorplan.enc -relativePath -compress
summaryReport -outfile results/summary/03-floorplan.rpt


#deprecated commands
#
#                         #addRing -width_left 0.8 -width_bottom 0.8 -width_top 0.8 -width_right 0.8 \
#                         #        -spacing_bottom 0.8 -spacing_top 0.8 -spacing_left 0.8 -spacing_right 0.8 \
#                         #        -layer_top metal9 -layer_bottom metal9 -layer_left metal10 -layer_right metal10 \
#                         #        -lb 1 -lt 1 -rb 1 -rt 1 -nets {VDD VSS}
#









