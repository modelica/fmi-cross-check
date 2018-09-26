Test case     : MixtureGases.fmu
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
CSIMPMixtureGases.c        
cl  -I"c:\wrk\devl\rev14\v1400\lib" -nologo -MT -W3 -EHsc -wd4996 -fp:precise -DWIN32 -D "_WINDOWS" -D "NDEBUG" -D "_MBCS" -c CSIMPMixtureGases.c -Fowin32\
CSIMPMixtureGases.c
Submodel build completed!

Model description ok.
Warning(s):
Variable der(m1) is declared as an alias of m_flow_ext but they do not match
Variable der(U1) is declared as an alias of H_flow_ext but they do not match
Variable der(m2) is declared as an alias of m_flow_ext but they do not match
Variable der(U2) is declared as an alias of H_flow_ext but they do not match
Variable der(smoothState.p) is declared as an alias of der_p but they do not match
Variable der(smoothState.T) is declared as an alias of der_T but they do not match
Creating C:\c32\Dymola\2015_FD01\MixtureGases/./submodels/CSIMPMixtureGases.spe submodel file...
Creating C:\c32\Dymola\2015_FD01\MixtureGases/./submodels/CSIMPMixtureGases.c submodel source file...
Icon fmuin000out002 added to C:\c32\Dymola\2015_FD01\MixtureGases/./Icons/fmi.ico

Simulation parameters:
Simulation time  : 0 s to 1 s
Print interval   : 0.001 s
Integrator type  : fixed step integrator
Step size        : 0.001 s
Solver type      : Euler

Comments and remarks can be addressed to fmicontact@siemens.com
