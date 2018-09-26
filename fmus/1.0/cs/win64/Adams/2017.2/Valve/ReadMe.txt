Model:
      FMU generated using a cam valve model
      
FMI Type:
      CoSimulation
      
Generation Tool:
      Adams 2017.2
      
Available Platforms:
      win64, linux64
      
Notes:
      Input_motion function is 360*3.14159265359*time/180 (360d*time)
      This is a tool based FMU and requires Adams installation alongwith the appropriate licenses.
      On Windows, install the Adams product in the default location suggested by the installer "C:\MSC.Software\Adams\2017_2". Add the location "C:\MSC.Software\Adams\2017_2\bin" to the PATH environment variable after installation.
	  On Linux, install the Adams product in the default location suggested by the installer "/msc/Adams/2017_2". It needs to be installed with root permissions. This ensures the required soft links are set properly.
      
FMUChecker:
      FMUChecker Version 2.0.3
      
      run command:
      set FMUName=valve
      fmuCheck.win64.exe -e %FMUName%_cc.log -o %FMUName%_cc.csv -i %FMUName%_in.csv -n 0 -h 0.001 -s 5 %FMUName%.fmu
      
Contact: 
      muralidhar.duvvuri@mscsoftware.com
