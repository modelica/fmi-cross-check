Model:
This FMU is taken from the standard Silver set of examples.
In this example, we show SBS used for the lights_control example introduced in the standard Silver examples.

FMI Type:
Co-simulation

Generation Tool:
Silver 2.6.0.208_alpha12

Contact email:
andreas.junghanns@qtronic.de; adrian.tirea@qtronic-software.ro

Available Platforms:
win32

Known Errors:
None

FMUChecker:
FMUChecker Version 2.0 win32

run command for ComplianceChecker:
set FMUName=egs
fmuCheck.win32.exe -e %FMUName%_cc.log -i %FMUName%_in.csv -o %FMUName%_cc.csv -l 6 -h 0.01 -s 7 %FMUName%.fmu

better: Run Silver with egs.sil and enable the CsvReader (or use the GUI) to produce meaningful output.
