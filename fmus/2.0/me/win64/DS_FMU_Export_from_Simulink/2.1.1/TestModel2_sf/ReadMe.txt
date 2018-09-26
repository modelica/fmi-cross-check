Model:
      Simulink model with Real and Boolean outputs, in-model data conversion, 
      and C source compiled S-function block.
      
      FMI Type:
      ModelExchange
      
      Generation Tool:
      Dassault Systemes FMU Export from Simulink, ver. 2.1.1 (MATLAB 8.7 (R2014b) 08-Sep-2014)
      
      Available Platforms:
      win32, win64
      
      Known Errors:
      
      Additional Information:
      
      
        
      FMUChecker:
      FMUChecker Version 2.0.2b1
      
      run command:
      set FMUName=TestModel2_sf
      fmuCheck.win64.exe -k me -e %FMUName%_cc.log -o %FMUName%_cc.csv -i %FMUName%_in.csv -h 1e-3 -s 10 %FMUName%.fmu
      
      Contact info: dan.henriksson@3ds.com
