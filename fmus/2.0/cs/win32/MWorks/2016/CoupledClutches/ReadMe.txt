Model:
CoupledClutches

FMI Type:
CoSimulation

Generation Tool:
MWorks.Sysporer 2016

Available Platforms:
win32, win64

Known Errors:
None

FMUChecker:
FMUChecker Version 2.0

run command for ComplianceChecker:
set FMUName=CoupledClutches
fmuCheck.win32.exe -k cs -o %FMUName%_cc.csv -i %FMUName%_in.csv -e %FMUName%_cc.log -h 1e-3 -s 1.5 "%FMUName%.fmu"

Contact email:
chenl@tongyuan.cc
