FMI Type:
Model exchange

Generation Tool:
FMUSDK 2.0.3

Contact email:
adrian.tirea@qtronic-software.ro

Available Platforms:
win32

Known Errors:
None

FMUChecker:
FMUChecker Version 2.0.1

run command for ComplianceChecker:
set FMUName=inc
fmuCheck.win32.exe -e %FMUName%_cc.log -o %FMUName%_cc.csv -l 6 -h 0.5 -s 15.00 %FMUName%.fmu
