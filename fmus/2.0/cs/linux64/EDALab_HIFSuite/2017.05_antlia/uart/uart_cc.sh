#!/bin/bash

FMU_CHECK=./fmuCheck.linux64
FMU_NAME=uart

$FMU_CHECK -i ${FMU_NAME}_in.csv -e ${FMU_NAME}_cc.log -o ${FMU_NAME}_cc.csv -l 3 -n 0 -h 0.001 -s 10 ${FMU_NAME}.fmu
