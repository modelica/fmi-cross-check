Test case     : IntegerNetwork1.fmu
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
MEIMPIntegerNetwork1.c        
cl  -I"c:\wrk\devl\rev14\v1400\lib" -nologo -MT -W3 -EHsc -wd4996 -fp:precise -DWIN32 -D "_WINDOWS" -D "NDEBUG" -D "_MBCS" -c MEIMPIntegerNetwork1.c -Fowin32\
MEIMPIntegerNetwork1.c
MEIMPIntegerNetwork1.c(898) : warning C4244: 'initializing' : conversion from 'double' to 'fmiInteger', possible loss of data
MEIMPIntegerNetwork1.c(937) : warning C4244: 'initializing' : conversion from 'double' to 'fmiInteger', possible loss of data
Submodel build completed!

Model description ok.
Creating C:\wrk\devl\Rev14\CrossChecksFMI\ImportModelExchange\OpenModelica\1.9.2\IntegerNetwork1/./submodels/MEIMPIntegerNetwork1.spe submodel file...
Creating C:\wrk\devl\Rev14\CrossChecksFMI\ImportModelExchange\OpenModelica\1.9.2\IntegerNetwork1/./submodels/MEIMPIntegerNetwork1.c submodel source file...
FMICreateIcon: icon fmuin001out006 already exists in C:\wrk\devl\Rev14\CrossChecksFMI\ImportModelExchange\OpenModelica\1.9.2\IntegerNetwork1/./Icons/fmi.ico

Simulation failed.
1 Warning/Error: Failed to initialize model
2 Warning/Error: Since the model has no state variable,
3 Warning/Error: the maximum time step has been reduced to 0.01s.
4 Warning/Error: Error in MEIMPIntegerNetwork1.c (instance 1): cannot load C:/wrk/devl/Rev14/CrossChecksFMI/ImportModelExchange/OpenModelica/1.9.2/IntegerNetwork1/IntegerNetwork1/binaries/win32/IntegerNetwork1.dll
5 Warning/Error: Initialization failed.
6 Information: LMS Amesim model master did an abnormal exit!
1 Information: Instantiating a system with 1 unknowns.
2 Information: Initializing model for simulation...
3 Information: Total CPU time: 0 seconds.

Comments and remarks can be addressed to fmicontact@siemens.com
