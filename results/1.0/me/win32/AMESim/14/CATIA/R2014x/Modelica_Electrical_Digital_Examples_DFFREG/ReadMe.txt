Test case   : Modelica_Electrical_Digital_Examples_DFFREG.fmu
Done with   : LMS Imagine.Lab Amesim 14
Performed on: 2015-FEB-16
Platform    : Windows 7 64 bit using "standard32" platform type
Compiler    : Microsoft Visual Studio 2005 Pro 32 bits

Import process:
It is an FMU for Model Exchange, version 1.0, running on win64, win32
Submodels Windows compilation batch file.
-----------------------------------------------------------------------
This batch file is to automate the compile procedure for submodels 
or other userwritten C files using the Microsoft Visual C++ compiler. 
-----------------------------------------------------------------------
- Will compile the following file(s):
MEIMPModelica_Electrical_Digital_Examples_DFFREG.c        
cl  -I"c:\wrk\devl\rev14\v1400\lib" -nologo -MT -W3 -EHsc -wd4996 -fp:precise -DWIN32 -D "_WINDOWS" -D "NDEBUG" -D "_MBCS" -c MEIMPModelica_Electrical_Digital_Examples_DFFREG.c -Fowin32\
MEIMPModelica_Electrical_Digital_Examples_DFFREG.c
Submodel build completed!

Model description ok.
Warning(s):
Variable dFFREG.delay.y[1] is declared as an alias of dFFREG.delay.inertialDelaySensitive[1].y but they do not match
Variable dFFREG.delay.y[2] is declared as an alias of dFFREG.delay.inertialDelaySensitive[2].y but they do not match
Variable dFFREG.dataOut[1] is declared as an alias of dFFREG.delay.inertialDelaySensitive[1].y but they do not match
Variable dFFREG.dataOut[2] is declared as an alias of dFFREG.delay.inertialDelaySensitive[2].y but they do not match
Creating C:\crosscheck32\CATIA\R2014x\Modelica_Electrical_Digital_Examples_DFFREG/./submodels/MEIMPModelica_Electrical_Digital_Examples_DFFREG.spe submodel file...
Creating C:\crosscheck32\CATIA\R2014x\Modelica_Electrical_Digital_Examples_DFFREG/./submodels/MEIMPModelica_Electrical_Digital_Examples_DFFREG.c submodel source file...
Icon fmuin000out000 added to C:\crosscheck32\CATIA\R2014x\Modelica_Electrical_Digital_Examples_DFFREG/./Icons/fmi.ico

Simulation parameters:

Simulation time   : 0 s to 25 s
Print interval    : 1 s
Integrator type   : standard integrator
Tolerance         : 1e-5 (default)
Maximum time step : 1e30  (default)
Solver type       : Regular

Comments and remarks can be addressed to fmicontact@siemens.com
