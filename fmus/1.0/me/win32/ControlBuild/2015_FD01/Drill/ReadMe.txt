Model:
	    drill
	     
	Generating tool:
	    ControlBuild 2015_FD01
	     
	Platform:
	    Windows 7 64 bit
	     
	Compiler:
	    mingw32-gcc-4.5.2
	     
	Available platforms:
	    win32
	   
	Known errors:
	    None
	     
	Simulation time:
	    0s-12.0s
	
	FMU Checker:
	    FMUChecker version 2.0.2b1 win32
	     
	Command to run with checker:
	    set FMUName=drill
	    fmuCheck.win32.exe -e %FMUName%_cc.txt -o %FMUName%_cc.csv -h 1e-2 -s 12.0 %FMUName%.fmu
	
	Folder contents:
	    drill.fmu                                                       FMU exported with ControlBuild 2015_FD01
	    drill_cc.bat                                                    Batch file to run FMU with FMUChecker
	    drill_cc.txt                                                    Log file from FMUChecker
	    drill_cc.csv                                                    Result file from simulation using FMUChecker with explicit Euler