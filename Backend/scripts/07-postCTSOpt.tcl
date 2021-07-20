#############################################################################################
# Post CTS Optimization
#############################################################################################

# Round 1: Setup Violation fix after Clk Tree Synthesis

initECO temp/ipo2_setup.txt
trialRoute -highEffort
setExtractRCMode -engine preRoute
extractRC
optDesign -postCTS
if {[isDesignOKForPlace] != 1} {fixDRCViolation -maxTran -maxCap -maxFanout}
endECO
cleanupECO

# Round 2: Hold Violation fix after Setup fix
initECO temp/ipo2_hold.txt
setExtractRCMode -engine postRoute -effortLevel low
extractRC
optDesign -postCTS -hold
if {[isDesignOKForPlace] != 1} {fixDRCViolation -maxTran -maxCap -maxFanout}
endECO
cleanupECO

saveNetlist results/verilog/rgb2gray.postcts.v
saveDesign ./DBS/07-postCtsOpt.enc -relativePath -compress

# Post CTS Timing analysis
setExtractRCMode -engine postRoute -effortLevel low
extractRC

setAnalysisMode -checkType hold -asyncChecks async -skew true -clockPropagation sdcControl
timeDesign  -slackReports -pathreports -expandReg2Reg -expandedViews \
            -reportOnly -numPaths 10 -hold -outDir results/timing/07-postCTSOpt-timeDesign.hold
report_timing -net -format {instance arc cell slew net annotation load delay arrival} -max_paths 10 >  results/timing/07-postCtsOpt_hold.rpt

setAnalysisMode -checkType setup -asyncChecks async -skew true -clockPropagation sdcControl
timeDesign -drvReports -slackReports -pathreports -expandReg2Reg -expandedViews \
           -reportOnly -numPaths 10 -outDir ./results/timing/07-postCTSOpt-timeDesign.setup
report_timing -net -format {instance arc cell slew net annotation load delay arrival} -max_paths 10 >  results/timing/07-postCtsOpt_setup.rpt

summaryReport  -outfile results/summary/07-postCTSOpt.rpt

