Model:
BouncingBall

FMI Type:
CoSimulation

Generation Tool:
MWorks.Sysporer 2016

Available Platforms:
win64

Known Errors:
None

FMUChecker:
FMUChecker Version 2.0

run command for ComplianceChecker:
set FMUName=BouncingBall
fmuCheck.win64.exe -k cs -o %FMUName%_ref.csv -e %FMUName%_cc.log -h 1e-2 -s 10 "%FMUName%.fmu"

Contact email:
huangzc@tongyuan.cc
