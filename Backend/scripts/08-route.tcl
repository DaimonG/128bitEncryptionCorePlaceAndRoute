#############################################################################################
# Routing
#############################################################################################

# Setting NanoRoute Options"

set critNet {clk}
setAttribute -net $critNet -weight 100
setAttribute -net $critNet -avoid_detour true
setAttribute -net $critNet -bottom_preferred_routing_layer 2
setAttribute -net $critNet -top_preferred_routing_layer 4

setNanoRouteMode -quiet -drouteFixAntenna false
setNanoRouteMode -quiet -routeInsertAntennaDiode false
setNanoRouteMode -quiet -routeAntennaCellName default
setNanoRouteMode -quiet -routeWithTimingDriven true
setNanoRouteMode -quiet -routeWithSiDriven true
setNanoRouteMode -quiet -routeSiEffort medium
setNanoRouteMode -quiet -routeWithSiPostRouteFix false
setNanoRouteMode -quiet -drouteAutoStop false
setNanoRouteMode -quiet -routeSelectedNetOnly false
setNanoRouteMode -quiet -drouteStartIteration default
setNanoRouteMode -quiet -routeTopRoutingLayer 5
setNanoRouteMode -quiet -routeBottomRoutingLayer 1
setNanoRouteMode -quiet -drouteEndIteration default

setNanoRouteMode -quiet -routeUseBlockageForAutoGgrid true

# Global and Detail Route with NanoRoute

globalDetailRoute

# global power nets:
#set dbgTieHighNet VDD
#set dbgTieLowNet VSS
#connectToGlobalNet -tie_highs_lows 1 -to_global_net VDD -pins VDD
#connectToGlobalNet -tie_highs_lows 1 -to_global_net VSS -pins VSS

saveNetlist results/verilog/aes128key.route.v
saveDesign ./DBS/08-route.enc -relativePath -compress

# Post Route timing analysis
setAnalysisMode -analysisType single -checkType setup -skew true -clockPropagation sdcControl
setExtractRCMode -engine postRoute -effortLevel low
extractRC

setAnalysisMode -checkType hold -skew true -clockPropagation sdcControl
timeDesign  -slackReports -pathreports -expandReg2Reg -expandedViews \
            -reportOnly -numPaths 10 -hold -outDir results/timing/08-route-timeDesign.hold
report_timing -net -format {instance arc cell slew net annotation load delay arrival} -max_paths 10 > results/timing/08-route.hold.rpt


setAnalysisMode -analysisType single -checkType setup -skew true -clockPropagation sdcControl
timeDesign -drvReports -slackReports -pathreports -expandReg2Reg -expandedViews \
           -reportOnly -numPaths 10 -outDir results/timing/08-route-timeDesign.setup
report_timing -net -format {instance arc cell slew net annotation load delay arrival} -max_paths 10 > results/timing/08-route.setup.rpt

summaryReport  -outfile results/summary/08-route.rpt

