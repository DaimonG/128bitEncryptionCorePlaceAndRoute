# Master Script to run all P&R Scripts
#

set TIME_start [clock clicks -milliseconds]

source /ensc/cmc_homedirs/escmc29/ensc450/ENSC450phase4/BE_045/scripts/03-powerPlan.tcl
source /ensc/cmc_homedirs/escmc29/ensc450/ENSC450phase4/BE_045/scripts/04-placement.tcl
source /ensc/cmc_homedirs/escmc29/ensc450/ENSC450phase4/BE_045/scripts/05-postPlaceOpt.tcl
source /ensc/cmc_homedirs/escmc29/ensc450/ENSC450phase4/BE_045/scripts/06-cts.tcl
source /ensc/cmc_homedirs/escmc29/ensc450/ENSC450phase4/BE_045/scripts/07-postCTSOpt.tcl
source /ensc/cmc_homedirs/escmc29/ensc450/ENSC450phase4/BE_045/scripts/08-route.tcl
source /ensc/cmc_homedirs/escmc29/ensc450/ENSC450phase4/BE_045/scripts/09-finishing.tcl

puts {Time to run (ms): }
set TIME_Taken [expr [clock clicks -milliseconds] - $TIME_start]


