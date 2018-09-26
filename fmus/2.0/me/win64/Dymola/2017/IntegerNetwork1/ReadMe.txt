Model:
      Modelica Standard library model
      IntegerNetwork1
      
      FMI Type:
      ModelExchange
      
      Generation Tool:
      Dymola 2017
      
      Available Platforms:
      win32, win64
      
      Known Errors:
      
      Additional Information:
      
      
        
      FMUChecker:
      FMUChecker Version 2.0.3b2 
      
      run command:
      set FMUName=IntegerNetwork1
      fmuCheck.win64.exe -k me -e %FMUName%_cc.log -o %FMUName%_cc.csv -i %FMUName%_in.csv -h 1e-2 -s 10 %FMUName%.fmu
      
      Contact info: karl.wernersson@3ds.com
