#!/bin/bash
FMUName=CoupledClutches
./fmuCheck.linux64 -e ${FMUName}_cc.log -o ${FMUName}_cc.csv -s 1.500000 -h 0.010000 -i /home/enzo/vmshare/export/scripts/../models/CoupledClutches_in.csv -f -c ',' ${FMUName}.fmu