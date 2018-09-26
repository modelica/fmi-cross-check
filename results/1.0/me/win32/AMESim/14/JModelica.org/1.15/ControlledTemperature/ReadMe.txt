Test case     : ControlledTemperature.fmu
Done with     : LMS Imagine.Lab Amesim 14
Performed on  : 2015-Mar-02
Platform      : Windows 7 64 bit using "standard32" platform type
Compiler      : Microsoft Visual Studio 2005 Pro 32 bit

Import process:
It is an FMU for Model Exchange, version 1.0, running on win32

Model description not ok. There are some error(s).
Error(s):
The variables thermalConductor.port_a.T, temperatureSensor.port.T, heatingResistor.T_heatPort, heatCapacitor.port.T share the same value reference and all have a potentially mutable start value
Warning(s):
Variable heatCapacitor.port.T is declared as an alias of heatCapacitor.T but they do not match
Variable heatingResistor.T_heatPort is declared as an alias of heatCapacitor.T but they do not match
Variable temperatureSensor.port.T is declared as an alias of heatCapacitor.T but they do not match
Variable thermalConductor.port_a.T is declared as an alias of heatCapacitor.T but they do not match
There are some errors.

Comments and remarks can be addressed to fmicontact@siemens.com
