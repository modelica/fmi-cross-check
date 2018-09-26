FMI Type:
Model exchange

Generation Tool:
FMUSDK 2.0.4

Contact email:
adrian.tirea@qtronic-software.ro

Available Platforms:
win32

Known Errors:
None

FMUChecker:
FMUChecker Version 2.0s

run command for ComplianceChecker:
set FMUName=bouncingBall
fmuCheck.win32.exe -e %FMUName%_cc.log -o %FMUName%_cc.csv -l 6 -h 0.01 -s 4.00 %FMUName%.fmu
