#!/bin/bash
FMUName=ControlledTemperature
./fmuCheck.linux64 -e ${FMUName}_cc.log -o ${FMUName}_cc.csv -s 10.000000 -h 0.001000 -f -c ',' ${FMUName}.fmu