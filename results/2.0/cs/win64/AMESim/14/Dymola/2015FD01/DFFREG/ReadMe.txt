Test case     : DFFREG.fmu
Done with     : LMS Imagine.Lab Amesim 14
Performed on  : 2015-Mar-10
Platform      : Windows 7 64 bit using "standard32" platform type
Compiler      : Microsoft Visual Studio 2005 Pro 32 bit

Import process:
It is an FMU for Co-simulation, version 2.0, running on win64
Submodels Windows compilation batch file.
-----------------------------------------------------------------------
This batch file is to automate the compile procedure for submodels 
or other userwritten C files using the Microsoft Visual 64 bit C++ compiler. 
-----------------------------------------------------------------------
- Will compile the following file(s):
CSIMPDFFREG.c        
cl -DWIN64 -I"c:\wrk\devl\rev14\v1400\lib" -nologo -MT -W3 -EHsc -wd4996 -O2 -DWIN32 -DNDEBUG -D "_WINDOWS" -D "_MBCS" -c CSIMPDFFREG.c -Fowin64\
CSIMPDFFREG.c
CSIMPDFFREG.c(2000) : warning C4244: 'initializing' : conversion from 'double' to 'fmi2Integer', possible loss of data
CSIMPDFFREG.c(2000) : warning C4244: 'initializing' : conversion from 'double' to 'fmi2Integer', possible loss of data
CSIMPDFFREG.c(2000) : warning C4244: 'initializing' : conversion from 'double' to 'fmi2Integer', possible loss of data
CSIMPDFFREG.c(2000) : warning C4244: 'initializing' : conversion from 'double' to 'fmi2Integer', possible loss of data
CSIMPDFFREG.c(2000) : warning C4244: 'initializing' : conversion from 'double' to 'fmi2Integer', possible loss of data
CSIMPDFFREG.c(2000) : warning C4244: 'initializing' : conversion from 'double' to 'fmi2Integer', possible loss of data
Submodel build completed!

Model description ok.
Creating C:\wrk\Projets\MODELISAR\08_WorkInProgress\svn_fmi_standard_org\branches\public\CrossCheck_Results\FMI_2.0\CoSimulation\win64\AMESim\14\Dymola\2015FD01\DFFREG/./submodels/CSIMPDFFREG.spe submodel file...
Creating C:\wrk\Projets\MODELISAR\08_WorkInProgress\svn_fmi_standard_org\branches\public\CrossCheck_Results\FMI_2.0\CoSimulation\win64\AMESim\14\Dymola\2015FD01\DFFREG/./submodels/CSIMPDFFREG.c submodel source file...
FMICreateIcon: icon fmuin000out002 already exists in C:\wrk\Projets\MODELISAR\08_WorkInProgress\svn_fmi_standard_org\branches\public\CrossCheck_Results\FMI_2.0\CoSimulation\win64\AMESim\14\Dymola\2015FD01\DFFREG/./Icons/fmi.ico

Simulation parameters:
Simulation time  : 0 s to 25 s
Print interval   : 0.1 s
Integrator type  : fixed step integrator
Step size        : 0.1 s
Solver type      : Euler

Comments and remarks can be addressed to fmicontact@siemens.com
