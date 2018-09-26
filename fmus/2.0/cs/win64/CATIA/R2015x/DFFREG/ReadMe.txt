Model : 
Modelica library model 
FMUName=DFFREG 
 
FMI Type :  
CoSimulation  
 
Generation Tool : 
CATIA R2015x 
 
Available Platforms : 
win64 
 
Known Errors : 
Not all <ScalarVariables variability="constant"> have their start value printed in modeldescription.xml 
 
FMUChecker : 
FMUChecker Version 2.0b3 win64 
 
run command : 
set FMUName=DFFREG
fmuCheck.win64.exe -e %FMUName%_cc.log -o %FMUName%_cc.csv -h 1e0 -s 25 %FMUName%.fmu 
