Model:
      FMU generated using a spring mass damper model
      
FMI Type:
      CoSimulation
      
Generation Tool:
      Adams 2017.2
      
Available Platforms:
      win64, linux64
      
Notes:
      Input is 0.0 throughout the simulation
      This is a tool based FMU and requires Adams installation alongwith the appropriate licenses.
      On Windows, install the Adams product in the default location suggested by the installer "C:\MSC.Software\Adams\2017_2". Add the location "C:\MSC.Software\Adams\2017_2\bin" to the PATH environment variable after installation.
	  On Linux, install the Adams product in the default location suggested by the installer "/msc/Adams/2017_2". It needs to be installed with root permissions. This ensures the required soft links are set properly.
      
FMUChecker:
      FMUChecker Version 2.0.3
      
      run command:
      set FMUName=springmassdamper
      fmuCheck.win64.exe -e %FMUName%_cc.log -o %FMUName%_cc.csv -n 0 -h 0.01 -s 50 %FMUName%.fmu
      
Contact: 
      muralidhar.duvvuri@mscsoftware.com
