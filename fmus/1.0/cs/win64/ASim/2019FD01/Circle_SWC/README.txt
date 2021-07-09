Model:
	    Circle_SWC - returns cosinus and sinus value where angle is the time
	     
	Generating tool:
	    AUTOSAR Builder 2019 FD01
	     
	Platform:
	    Windows 7 64 bit
	     
	Compiler:
	    mingw32-gcc-4.5.2
	     
	Available platforms:
	    win64
	   
	Known errors:
	    None
	     
	Simulation time:
	    0s-4s
	
	FMU Checker:
	    FMUChecker version 2.0.1 win64
	     
	Command to run with checker:
	    set FMUName=Circle_SWC
	    fmuCheck.win64.exe -e %FMUName%_cc.txt -o %FMUName%_cc.csv -h 1 -s 4 %FMUName%.fmu
	
	Folder contents:
	    Circle.fmu                         FMU exported with ASim 2019FD01
	    Circle_ref.csv                     Result file from simulation using ASim 2019FD01
	    Circle_ref.opt                     Timing options to run the checker
	    ReadMe.txt			       This File