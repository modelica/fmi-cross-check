Model:
This FMU is taken from the standard Silver set of examples.
In this example, we show SBS used for the lights_control example introduced in the standard Silver examples.

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
set FMUName=lights_control
fmuCheck.win64.exe -e %FMUName%_cc.log -i %FMUName%_in.csv -o %FMUName%_cc.csv -l 6 -h 0.01 -s 7 %FMUName%.fmu

better: Run Silver with lights_control.sil and enable the CsvReader (or use the GUI) to produce meaningful output.

