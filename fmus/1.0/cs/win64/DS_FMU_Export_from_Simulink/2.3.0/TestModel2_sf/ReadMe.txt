Model:
      Simulink model with Real and Boolean outputs, in-model data conversion, 
      and C source compiled S-function block.
      Fixed-step solver: ode3
      
      FMI Type:
      CoSimulation
      
      Generation Tool:
      Dassault Systemes FMI Kit for Simulink, ver. 2.3.0 (MATLAB 8.9 (R2015b) 13-Aug-2015)
      
      Available Platforms:
      win32, win64
      
      Known Errors:
      
      Additional Information:
      
      
        
      FMUChecker:
      FMUChecker Version 2.0.3
      
      run command:
      set FMUName=TestModel2_sf
      fmuCheck.win64.exe -k cs -e %FMUName%_cc.log -o %FMUName%_cc.csv -i %FMUName%_in.csv -h 1e-3 -s 10 %FMUName%.fmu
      
      Contact info: dan.henriksson@3ds.com
