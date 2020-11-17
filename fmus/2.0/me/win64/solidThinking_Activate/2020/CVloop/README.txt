Model:
CVLoop: CVloop is created from an Activate model. This model is based on the model, PF1, given in "Mathematical and Computer Modeling of Physiological Systems" 
by Vincent C. Rideout. Prentice Hall, Englewood Cliffs, NJ.  The book has been out of print for a few years but contained some good model examples. 
The system models a complete Cardiovascular(CV) Loop. The plotted outputs are as follows:
1) Left Heart--Aortic Pressure, Left Ventricular Pressure and Left Ventricular Flow.
2) Right Heart-- Pulmonary Artery Pressure, Right Ventricular Pressure and Right Ventricular Flow.
3) Simulated Impedance Cardiogram (ZCT)  obtained by summing and differentiating the fluid volumes on each of the model capitances that represent changes in thoracic fluid volume.
4) Pressure/Volume Loop of the Left Ventricle, the Enclosed Area of which represents the amount of Work done by the left ventricle. 
The model uses an electrical analog to simulate fluid conditions. Fluid components, Resistance, Compliance and Inertance are simulated by Electrical Resistance, Capacitance and Inductance, respectively. The heart is simulated by  variable capacitors. The four valves are simulated by Limiting Integrators.
The heart rate can be changed by changing its constant value.
Once the user is familiar with the model many Physiological/Medical problems can be duplicated, for example: Right/Left Heart Failure, Valvular Stenosis and Regurgitation, Ventrical Septal Defect and many more.
Model by
Bruce C. Taylor, PhD
Associate Professor(Retired) of Biomedical Engineering
The University of Akron, Akron, Ohio


FMI Type:
ModelExchange

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
fmuCheck.win64.exe -k me -o CVLoop_ref.csv  -s 5 -h 1e-4 -c ,  -n 500 CVLoop.fmu
```