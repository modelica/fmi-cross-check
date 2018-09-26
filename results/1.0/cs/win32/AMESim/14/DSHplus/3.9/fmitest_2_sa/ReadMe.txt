Test case     : fmitest_2_sa.fmu
Done with     : LMS Imagine.Lab Amesim 14
Performed on  : 2015-Feb-18
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
CSIMPfmitest_2_sa.c        
cl  -I"c:\wrk\devl\rev14\v1400\lib" -nologo -MT -W3 -EHsc -wd4996 -fp:precise -DWIN32 -D "_WINDOWS" -D "NDEBUG" -D "_MBCS" -c CSIMPfmitest_2_sa.c -Fowin32\
CSIMPfmitest_2_sa.c
Submodel build completed!

Model description ok.
Creating C:\c32\DSHplus\3.9\fmitest_2_sa/./submodels/CSIMPfmitest_2_sa.spe submodel file...
Creating C:\c32\DSHplus\3.9\fmitest_2_sa/./submodels/CSIMPfmitest_2_sa.c submodel source file...
Icon fmuin001out001 added to C:\c32\DSHplus\3.9\fmitest_2_sa/./Icons/fmi.ico

Simulation parameters:
Simulation time  : 0 s to 20 s
Print interval   : 0.01 s
Step size        : 0.01 s

Comments and remarks can be addressed to fmicontact@siemens.com
