#!/bin/bash

set -x

## CSV file content BEGIN
#GROUP,PACKAGE,CLASS,INSTRUCTION_MISSED,INSTRUCTION_COVERED,BRANCH_MISSED,BRANCH_COVERED,LINE_MISSED,LINE_COVERED,COMPLEXITY_MISSED,COMPLEXITY_COVERED,METHOD_MISSED,METHOD_COVERED
#app,com.here.hnod.feynman.activities,LucidMainActivity,268,0,16,0,38,0,17,0,9,0
#app,com.here.hnod.feynman.activities.icr,ICRScreenFragment,90,0,4,0,18,0,7,0,5,0
#app,com.here.hnod.feynman.activities.cid,CIDScreenFragment,263,18,18,0,34,8,20,2,11,2
#app,com.here.hnod.feynman.configuration,DisplayOptionsKt,13,0,0,0,3,0,4,0,4,0
#app,com.here.hnod.feynman.configuration,DisplayOptions.Companion,11,0,4,0,4,0,3,0,1,0
#app,com.here.hnod.feynman.configuration,DisplayOptions,63,0,0,0,6,0,4,0,4,0
#app,com.here.hnod.feynman.tools,ContextExtensionsKt,33,0,0,0,6,0,2,0,2,0
#app,com.here.hnod.feynman.activities.icr.tray,ICRTrayFragment,124,0,4,0,21,0,9,0,7,0
#app,com.here.hnod.feynman.activities.icr.tray,IcrTrayController,50,0,0,0,6,0,3,0,3,0
#app,com.here.hnod.feynman.receiver,BootCompletedReceiver,16,0,2,0,5,0,3,0,2,0
## CSV file content END

IFILE=~/Downloads/jacocoTestReport.csv

awk -F"," '{ total+=$4+$5; covered+=$5 } END { print "Jacoco instructions covered:", 100*covered/total, "%" }' ${IFILE}

