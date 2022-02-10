Model:
BooleanNetwork1

FMI Type:
ModelExchange

Generation Tool:
MWorks.Sysporer 2021

Available Platforms:
win32, win64

Known Errors:
None

FMUChecker:
FMUChecker Version 2.0.4

run command for ComplianceChecker:
set FMUName=BooleanNetwork1
fmuCheck.win32.exe -k me -o %FMUName%_ref.csv -i %FMUName%_in.csv -e %FMUName%_cc.log -h 1e-2 -s 10 "%FMUName%.fmu"

Contact email:
huangzc@tongyuan.cc
