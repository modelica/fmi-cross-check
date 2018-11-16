Model:
	    Speed_SWC - compute speed of the vehicle
	     
	Generating tool:
	    ASim 2019 FD01
	     
	Platform:
	    Windows 7 64 bit
	     
	Compiler:
	    mingw32-gcc-4.5.2
	     
	Available platforms:
	    win64
	   
	Known errors:
	    None
	     
	Simulation time:
	    0s-0.4s
	
	FMU Checker:
	    FMUChecker version 2.0.1 win32
	     
	Command to run with checker:
	    set FMUName=Speed_SWC
	    fmuCheck.win32.exe -e %FMUName%_cc.txt -o %FMUName%_cc.csv -h 0.01 -s 0.4 %FMUName%.fmu
		
	Inputs:
		This FMU contains 2 inputs which can be changed if desired.
			"Speed_SWC_initialSpeed_data" initial speed of vehicle. start = 0.0
			"Speed_SWC_acceleration_data" initial speed of vehicle. start = 2.0
	
	Folder contents:
	    Speed_SWC.fmu                         FMU exported with ASim 2019 FD 01
	    Speed_SWC_ref.csv                     Result file from simulation using FMUChecker
	    Speed_SWC_ref.opt                     Timing options to run the checker
	    ReadMe.txt							  This File