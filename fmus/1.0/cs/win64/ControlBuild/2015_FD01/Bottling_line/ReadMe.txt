Model:
	    bottling_line
	     
	Generating tool:
	    ControlBuild 2015 FD01
	     
	Platform:
	    Windows 7 64 bit
	     
	Compiler:
	    gcc 4.6.3 x86_64-w64-mingw32
	     
	Available platforms:
	    win64
	   
	Known errors:
	    None
	     
	Simulation time:
	    0s-300.0s
	
	FMU Checker:
	    FMUChecker version 2.0.2b1
	     
	Command to run with checker:
	    set FMUName=bottling_line
	    fmuCheck.win64.exe -e %FMUName%_cc.txt -o %FMUName%_cc.csv -h 1e-2 -s 300.0 %FMUName%.fmu
	
	Folder contents:
	    bottling_line.fmu                                                       FMU exported with ControlBuild 2015 FD01
	    bottling_line.bat                                                    Batch file to run FMU with FMUChecker
	    bottling_line.log                                                    Log file from FMUChecker
	    bottling_line.csv                                                    Result file from simulation using FMUChecker with explicit Euler