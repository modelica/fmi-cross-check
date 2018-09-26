Test case     : BooleanNetwork1.fmu
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
MEIMPBooleanNetwork1.c        
cl  -I"c:\wrk\devl\rev14\v1400\lib" -nologo -MT -W3 -EHsc -wd4996 -fp:precise -DWIN32 -D "_WINDOWS" -D "NDEBUG" -D "_MBCS" -c MEIMPBooleanNetwork1.c -Fowin32\
MEIMPBooleanNetwork1.c
MEIMPBooleanNetwork1.c(1057) : warning C4244: 'initializing' : conversion from 'double' to 'fmiBoolean', possible loss of data
MEIMPBooleanNetwork1.c(1096) : warning C4244: 'initializing' : conversion from 'double' to 'fmiBoolean', possible loss of data
Submodel build completed!

Model description ok.
Creating C:\wrk\devl\Rev14\CrossChecksFMI\ImportModelExchange\OpenModelica\1.9.2\BooleanNetwork1/./submodels/MEIMPBooleanNetwork1.spe submodel file...
Creating C:\wrk\devl\Rev14\CrossChecksFMI\ImportModelExchange\OpenModelica\1.9.2\BooleanNetwork1/./submodels/MEIMPBooleanNetwork1.c submodel source file...
FMICreateIcon: icon fmuin001out007 already exists in C:\wrk\devl\Rev14\CrossChecksFMI\ImportModelExchange\OpenModelica\1.9.2\BooleanNetwork1/./Icons/fmi.ico

Simulation failed.
1 Warning/Error: Failed to initialize model
2 Warning/Error: Since the model has no state variable,
3 Warning/Error: the maximum time step has been reduced to 0.01s.
4 Warning/Error: Error in MEIMPBooleanNetwork1.c (instance 1): cannot load C:/wrk/devl/Rev14/CrossChecksFMI/ImportModelExchange/OpenModelica/1.9.2/BooleanNetwork1/BooleanNetwork1/binaries/win32/BooleanNetwork1.dll
5 Warning/Error: Initialization failed.
6 Information: LMS Amesim model master did an abnormal exit!
1 Information: Instantiating a system with 1 unknowns.
2 Information: Initializing model for simulation...
3 Information: Total CPU time: 0 seconds.

Comments and remarks can be addressed to fmicontact@siemens.com
