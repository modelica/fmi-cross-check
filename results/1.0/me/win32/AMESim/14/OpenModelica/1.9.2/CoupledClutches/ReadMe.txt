Test case     : CoupledClutches.fmu
Done with     : LMS Imagine.Lab Amesim 14
Performed on  : 2015-Mar-11
Platform      : Windows 7 64 bit using "standard32" platform type
Compiler      : Microsoft Visual Studio 2005 Pro 32 bit

Import process:
It is an FMU for Model Exchange, version 1.0, running on win32
Submodels Windows compilation batch file.
-----------------------------------------------------------------------
This batch file is to automate the compile procedure for submodels 
or other userwritten C files using the Microsoft Visual C++ compiler. 
-----------------------------------------------------------------------
- Will compile the following file(s):
MEIMPCoupledClutches.c        
cl  -I"c:\wrk\devl\rev14\v1400\lib" -nologo -MT -W3 -EHsc -wd4996 -fp:precise -DWIN32 -D "_WINDOWS" -D "NDEBUG" -D "_MBCS" -c MEIMPCoupledClutches.c -Fowin32\
MEIMPCoupledClutches.c
Submodel build completed!

Model description ok.
Warning(s):
Enumeration variable clutch3.stateSelect has inconsistent min/max values
Creating C:\wrk\devl\Rev14\CrossChecksFMI\ImportModelExchange\OpenModelica\1.9.2\CoupledClutches/./submodels/MEIMPCoupledClutches.spe submodel file...
Creating C:\wrk\devl\Rev14\CrossChecksFMI\ImportModelExchange\OpenModelica\1.9.2\CoupledClutches/./submodels/MEIMPCoupledClutches.c submodel source file...
FMICreateIcon: icon fmuin001out004 already exists in C:\wrk\devl\Rev14\CrossChecksFMI\ImportModelExchange\OpenModelica\1.9.2\CoupledClutches/./Icons/fmi.ico

Simulation failed.
1 Warning/Error: Failed to initialize model
2 Warning/Error: Error in MEIMPCoupledClutches.c (instance 1): cannot load C:/wrk/devl/Rev14/CrossChecksFMI/ImportModelExchange/OpenModelica/1.9.2/CoupledClutches/CoupledClutches/binaries/win32/CoupledClutches.dll
3 Warning/Error: Initialization failed.
4 Information: LMS Amesim model master did an abnormal exit!
1 Information: Instantiating a system with 8 unknowns.
2 Information: Initializing model for simulation...
3 Information: Total CPU time: 0 seconds.

Comments and remarks can be addressed to fmicontact@siemens.com
