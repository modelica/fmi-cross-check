Model:
sb_DCMotor_Controller: This FMU simulates a DC motor controlled by a discrete-time controller to 
follow a reference angle.

FMI Type:
CoSimulation

Generation Tool:
Altair Activate 2020

Available Platforms:
win64, Linux64

Known Errors:

Additional Information:

Contact info: masoud@altair.com
Altair | Nasdaq: ALTR
[https://www.altair.com/activate/]

FMUChecker:
FMUChecker Version 2.0.4 

```bash
fmuCheck.win64.exe -k cs -o DiscreteController_ref.csv  -s 10  -h 1e-2 -c , -i DiscreteController_in.csv -n 100 DiscreteController.fmu
```