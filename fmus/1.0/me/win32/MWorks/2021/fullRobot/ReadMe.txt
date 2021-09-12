Model:
fullRobot

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
set FMUName=fullRobot
fmuCheck.win32.exe -k me -o %FMUName%_ref.csv -e %FMUName%_cc.log -h 1e-5 -s 1.0 "%FMUName%.fmu"

Contact email:
huangzc@tongyuan.cc
