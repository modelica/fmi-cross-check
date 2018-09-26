#!/bin/bash
FMUName=drill
./fmuCheck.linux64 -e ${FMUName}_cc.log -o ${FMUName}_cc.csv -s 60 -h 1e-2 -f -c ';' ${FMUName}.fmu
