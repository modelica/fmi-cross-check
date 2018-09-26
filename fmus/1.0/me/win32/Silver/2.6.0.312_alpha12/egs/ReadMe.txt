Model:
This FMU is taken from the standard Silver set of examples.
It shows a very simple control of a 6 speed automatic transmission.
Running this without inputs will leave all outputs 0.0.
There is a silver_screenshot.gif showing the results of running this FMU
in Silver 2.6.0.

FMI Type:
Model exchange

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
fmuCheck.win32.exe -e %FMUName%_cc.log -i %FMUName%_in.csv -o %FMUName%_cc.csv -l 6 -h 0.01 -s 33.56 %FMUName%.fmu

better: Run Silver with the egs.sil configuration and enable the CsvReader
to see how "useful" inputs are turned into outputs.
