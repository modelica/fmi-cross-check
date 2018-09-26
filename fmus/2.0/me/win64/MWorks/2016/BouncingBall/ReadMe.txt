Model:
BouncingBall

FMI Type:
ModelExchange

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
fmuCheck.win64.exe -k me -o %FMUName%_cc.csv -e %FMUName%_cc.log -h 1e-2 -s 10 "%FMUName%.fmu"

Contact email:
chenl@tongyuan.cc
