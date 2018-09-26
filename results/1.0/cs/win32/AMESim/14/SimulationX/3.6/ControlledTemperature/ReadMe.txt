Test case     : ControlledTemperature.fmu
Done with     : LMS Imagine.Lab Amesim 14
Performed on  : 2015-Feb-19
Platform      : Windows 7 64 bit using "standard32" platform type
Compiler      : Microsoft Visual Studio 2005 Pro 32 bit

Import process:
It is an FMU for Co-simulation, version 1.0, running on win32
Submodels Windows compilation batch file.
-----------------------------------------------------------------------
This batch file is to automate the compile procedure for submodels 
or other userwritten C files using the Microsoft Visual C++ compiler. 
-----------------------------------------------------------------------
- Will compile the following file(s):
CSIMPControlledTemperature.c        
cl  -I"c:\wrk\devl\rev14\v1400\lib" -nologo -MT -W3 -EHsc -wd4996 -fp:precise -DWIN32 -D "_WINDOWS" -D "NDEBUG" -D "_MBCS" -c CSIMPControlledTemperature.c -Fowin32\
CSIMPControlledTemperature.c
Submodel build completed!

Model description ok.
Creating C:\c32\SimulationX\3.6\ControlledTemperature/./submodels/CSIMPControlledTemperature.spe submodel file...
Creating C:\c32\SimulationX\3.6\ControlledTemperature/./submodels/CSIMPControlledTemperature.c submodel source file...
Icon fmuin001out001 added to C:\c32\SimulationX\3.6\ControlledTemperature/./Icons/fmi.ico

Simulation failed.
1 Warning/Error: Failed to initialize model
2 Warning/Error: ControlledTemperature-1: Error (Error) fmiSetXXX(..) or fmiGetXXX(..) was called with the invalid fmiValueReference: 1879048192
3 Warning/Error: Error in CSIMPControlledTemperature (instance 1) : cannot set variable values in fmu ControlledTemperature-1.
4 Warning/Error: Initialization (Fixedstep) failed.
5 Information: LMS Amesim model master did an abnormal exit!
# 9 info messages detected during simulation
1 Information: Instantiating a system with 1 unknowns.
2 Information: Initializing model for simulation...
3 Information: Number of x-y pairs read from file master_.onOff.dat : 10001
4 Information: ControlledTemperature-1 successfully instantiated
5 Information: Total CPU time: 0 seconds.
6 Information: Total CPU time: 0 seconds.
7 Information: Instance ControlledTemperature-1 terminated.
8 Information: FMU library successfully unloaded.
9 Information: LMS Amesim model master did an abnormal exit!

Comments and remarks can be addressed to fmicontact@siemens.com
