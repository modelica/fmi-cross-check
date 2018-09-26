FMI Type:
Co-simulation

Generation Tool:
FMUSDK 2.0.4

Contact email:
adrian.tirea@qtronic-software.ro

Available Platforms:
win64

Known Errors:
None

FMUChecker:
FMUChecker Version 2.0

run command for ComplianceChecker:
set FMUName=vanDerPol
fmuCheck.win64.exe -e %FMUName%_cc.log -o %FMUName%_cc.csv -l 6 -h 0.1 -s 5.00 %FMUName%.fmu
