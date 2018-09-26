Model:
	    drill
	     
	Generating tool:
	    ControlBuild 2015 FD01
	     
	Platform:
	    uname -r -v -m: 3.2.0-4-amd64 #1 SMP Debian 3.2.65-1+deb7u2 x86_64
	     
	Compiler:
	    gcc 4.7.2
	     
	Available platforms:
	    Linux64
	   
	Known errors:
	    None
	     
	Simulation time:
	    0s-60.0s
	
	FMU Checker:
	    FMUChecker version 2.0.2b1 linux64
	     
	Command to run with checker:
		#!/bin/bash
		FMUName=drill
		./fmuCheck.linux32 -e ${FMUName}_cc.log -o ${FMUName}_cc.csv -s 60 -h 1e-2 -f -c ';' ${FMUName}.fmu
	
	Folder contents:
	    drill.fmu                                                       FMU exported with ControlBuild 2015 FD01
	    drill_cc.sh		                                            Batch file to run FMU with FMUChecker
	    drill_cc.log                                                    Log file from FMUChecker
	    drill_cc.csv                                                    Result file from simulation using FMUChecker with explicit Euler
