Test case     : MixtureGases.fmu
Done with     : LMS Imagine.Lab Amesim 14
Performed on  : 2015-Feb-17
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
MEIMPMixtureGases.c        
cl  -I"c:\wrk\devl\rev14\v1400\lib" -nologo -MT -W3 -EHsc -wd4996 -fp:precise -DWIN32 -D "_WINDOWS" -D "NDEBUG" -D "_MBCS" -c MEIMPMixtureGases.c -Fowin32\
MEIMPMixtureGases.c
Submodel build completed!

Model description ok.
Warning(s):
Variable der(m1) is declared as an alias of m_flow_ext but they do not match
Variable der(U1) is declared as an alias of H_flow_ext but they do not match
Variable der(m2) is declared as an alias of m_flow_ext but they do not match
Variable der(U2) is declared as an alias of H_flow_ext but they do not match
Variable der(smoothState.p) is declared as an alias of der_p but they do not match
Variable der(smoothState.T) is declared as an alias of der_T but they do not match
Creating C:\crosscheck32\Dymola\2015 FD01\MixtureGases/./submodels/MEIMPMixtureGases.spe submodel file...
Creating C:\crosscheck32\Dymola\2015 FD01\MixtureGases/./submodels/MEIMPMixtureGases.c submodel source file...
Icon fmuin000out002 added to C:\crosscheck32\Dymola\2015 FD01\MixtureGases/./Icons/fmi.ico

Simulation parameters:
Simulation time  : 0 s to 1 s
Print interval   : 0.001
Integrator type  : standard integrator
Tolerance        : 1e-7
Maximum time step: 1e30 (default)
Solver type      : regular

Comments and remarks can be addressed to fmicontact@siemens.com
