Tool:
 CosiMate,version 7.0.0

Model:
 CoSimulation\win32\SimulationX\3.5.707\CoupledClutches\CoupledClutches.fmu

Files:
 -'{FMUName}_Log.txt' - The log generated from the model.
 -'{FMUName}_Out.csv' - The result from a simulation of the model in-case of a successful simulation.
 -'{FMUName}_Exception.txt' - The description of the error in-case of a failure.
 -'{FMUName}.gcn' - The Graphical CosiMate Netlist
 -'{FMUName}.xcn' - The Interface XML Description
 -'OUTPUT_{FMUName}.csv' - Input data ref 
 -'INPUT_{FMUName}.csv'  - Output data ref
 -'{FMUName}.ixd' - Interface XMl Description of the FMI Model
 -'IOs.mdl' - Simulink Model for co-simulation and results comparaison
 -'IOs.ixd' - Interface XMl Description of the Simulink Model
 - Simulink_ScreenShot.png - Screen shot of Simulink scope results 
 - FMI_ScreenShot.png - Screen shot of FMI scope results 

Simulation information:
 - Start time: 0.0
 - Final time: 1.5
 - Input variables:  None (Unmatched: ['t', 'step2.y'])
 - Output variables: ['time', 'clutch3.f_normalized', 'J1.w', 'J2.w', 'J3.w', 'J4.w']

How to Simulate:
 - Check if the {FMUName}.fmu is in the current directory (copy it if it is not the case).
 - Run {FMUName}.gcn using CosiMate and follow its instructions.

Tested with MATLAB version: 8.1.0.604 (R2013a)