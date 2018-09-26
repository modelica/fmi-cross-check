#!/bin/bash
FMUName=CauerLowPassAnalog
./fmuCheck.linux64 -e ${FMUName}_cc.log -o ${FMUName}_cc.csv -s 60.000000 -h 0.010000 -f -c ',' ${FMUName}.fmu