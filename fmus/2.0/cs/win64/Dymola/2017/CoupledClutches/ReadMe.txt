Model:
      Modelica Standard library model
      CoupledClutches
      
      FMI Type:
      CoSimulation
      
      Generation Tool:
      Dymola 2017
      
      Available Platforms:
      win32, win64
      
      Known Errors:
      
      Additional Information:
      
      
        
      FMUChecker:
      FMUChecker Version 2.0.3b2 
      
      run command:
      set FMUName=CoupledClutches
      fmuCheck.win64.exe -k cs -e %FMUName%_cc.log -o %FMUName%_cc.csv -i %FMUName%_in.csv -h 1e-3 -s 1.5 %FMUName%.fmu
      
      Contact info: karl.wernersson@3ds.com
