Test case     : CoupledClutches.fmu
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
CSIMPCoupledClutches.c        
cl  -I"c:\wrk\devl\rev14\v1400\lib" -nologo -MT -W3 -EHsc -wd4996 -fp:precise -DWIN32 -D "_WINDOWS" -D "NDEBUG" -D "_MBCS" -c CSIMPCoupledClutches.c -Fowin32\
CSIMPCoupledClutches.c
Submodel build completed!

Model description ok.
Creating C:\c32\SimulationX\3.6\CoupledClutches/./submodels/CSIMPCoupledClutches.spe submodel file...
Creating C:\c32\SimulationX\3.6\CoupledClutches/./submodels/CSIMPCoupledClutches.c submodel source file...
Icon fmuin001out004 added to C:\c32\SimulationX\3.6\CoupledClutches/./Icons/fmi.ico

Simulation failed.
1 Warning/Error: Failed to initialize model
2 Warning/Error: CoupledClutches-1: Error (Error) fmiSetXXX(..) or fmiGetXXX(..) was called with the invalid fmiValueReference: 1879048192
3 Warning/Error: Error in CSIMPCoupledClutches (instance 1) : cannot set variable values in fmu CoupledClutches-1.
4 Warning/Error: Initialization (Fixedstep) failed.
5 Information: LMS Amesim model master did an abnormal exit!
1 Information: Instantiating a system with 1 unknowns.
2 Information: Initializing model for simulation...
3 Information: CoupledClutches-1 successfully instantiated
4 Information: Total CPU time: 0 seconds.
5 Information: Total CPU time: 0 seconds.
6 Information: Instance CoupledClutches-1 terminated.
7 Information: FMU library successfully unloaded.
8 Information: LMS Amesim model master did an abnormal exit!

Comments and remarks can be addressed to fmicontact@siemens.com
