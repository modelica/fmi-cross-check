Model:
      FMU generated using a forklift model
      
FMI Type:
      CoSimulation
      
Generation Tool:
      Adams 2017.2
      
Available Platforms:
      win64, linux64
      
Notes:
      part1_rot_motion_input function is -57*time*3.1415926535898/180 (-57.0d*time)
      This is a tool based FMU and requires Adams installation alongwith the appropriate licenses.
      On Windows, install the Adams product in the default location suggested by the installer "C:\MSC.Software\Adams\2017_2". Add the location "C:\MSC.Software\Adams\2017_2\bin" to the PATH environment variable after installation.
	  On Linux, install the Adams product in the default location suggested by the installer "/msc/Adams/2017_2". It needs to be installed with root permissions. This ensures the required soft links are set properly.
      
FMUChecker:
      FMUChecker Version 2.0.3
      
      run command:
      fmuCheck.linux64 -e forklift_cc.log -o forklift_cc.csv -i forklift_in.csv -n 0 -h 0.001 -s 10 forklift.fmu
      
Contact: 
      muralidhar.duvvuri@mscsoftware.com
