Model:
This a simple example for how to build an FMU from an SBS description.
The module has three outputs:
 - y_0 = sin(time) * cos(time),                 update rate 10ms
 - y_1 = sin(time) + cos(time),                 update rate 20ms
 - y_2 = sin(time) + cos(time) + cos(2.5*time), update rate 20ms
This FMU does not read inputs.

FMI Type:
Co-simulation and Model-exchange

Generation Tool:
Silver 3.3.0

Contact email:
andreas.junghanns@qtronic.de; adrian.tirea@qtronic-software.ro

Available Platforms:
win64

Known Errors:
None

FMUChecker:
FMUChecker Version 2.0

run command for ComplianceChecker:
set FMUName=Compute
fmuCheck.win64.exe -e %FMUName%_cc.log -i %FMUName%_in.csv -o %FMUName%_cc.csv -l 6 -h 0.01 -s 4.00 %FMUName%.fmu
