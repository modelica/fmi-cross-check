Model:
      Simple Simulink model with B-L noise and sine wave signal sources, 
      discrete and continuous filters, saturation, and quantizer.
      
      FMI Type:
      ModelExchange
      
      Generation Tool:
      Dassault Systemes FMI Kit for Simulink, ver. 2.3.0 (MATLAB 8.9 (R2015b) 13-Aug-2015)
      
      Available Platforms:
      win32, win64
      
      Known Errors:
      
      Additional Information:
      
      
        
      FMUChecker:
      FMUChecker Version 2.0.3
      
      run command:
      set FMUName=TestModel1_sf
      fmuCheck.win64.exe -k me -e %FMUName%_cc.log -o %FMUName%_cc.csv -h 1e-3 -s 10 %FMUName%.fmu
      
      Contact info: dan.henriksson@3ds.com
