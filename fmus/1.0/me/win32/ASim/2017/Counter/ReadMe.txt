Model:
	    Counter
	     
	Generating tool:
	    ASim 2017
	     
	Platform:
	    Windows 7 64 bit
	     
	Compiler:
	    mingw32-gcc-4.5.2
	     
	Available platforms:
	    win32
	   
	Known errors:
	    None
	     
	Simulation time:
	    0s-50.0s
	
	FMU Checker:
	    FMUChecker version 2.0.1 win32
	     
	Command to run with checker:
	    set FMUName=Counter
	    fmuCheck.win32.exe -e %FMUName%_cc.txt -o %FMUName%_cc.csv -h 1 -s 50.0 %FMUName%.fmu
	
	Folder contents:
	    Counter.fmu                         FMU exported with ASim 2017
	    Counter_cc.bat                      Batch file to run FMU with FMUChecker
		Counter_cc.csv                      Result file from simulation using FMUChecker with explicit Euler
		Counter_cc.log						Result log file from FMUChecker
		Counter_ref.csv                     Result file from simulation using ASim 2017
	    Counter_ref.opt                     Timing options to run the checker
		ReadMe.txt							This File