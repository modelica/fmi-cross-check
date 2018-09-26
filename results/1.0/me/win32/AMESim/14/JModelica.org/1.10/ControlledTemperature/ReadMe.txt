Test case     : ControlledTemperature.fmu
Done with     : LMS Imagine.Lab Amesim 14
Performed on  : 2015-Feb-17
Platform      : Windows 7 64 bit using "standard32" platform type
Compiler      : Microsoft Visual Studio 2005 Pro 32 bit

Import process:
It is an FMU for Model Exchange, version 1.0, running on win32

Model description not ok. There are some error(s).
Error(s):
The variables thermalConductor.port_b.T, fixedTemperature.port.T, fixedTemperature.T share the same value reference and all have a potentially mutable start value
The variables thermalConductor.port_a.T, temperatureSensor.port.T, heatingResistor.T_heatPort, heatCapacitor.port.T, TRes share the same value reference and all have a potentially mutable start value
The variables idealSwitch.T_heatPort, idealSwitch.T share the same value reference and all have a potentially mutable start value
Warning(s):
Variable TRes is declared as an alias of heatCapacitor.T but they do not match
Variable constantVoltage.v is declared as an alias of constantVoltage.V but they do not match
Variable fixedTemperature.port.T is declared as an alias of fixedTemperature.T but they do not match
Variable ground.p.v is declared as an alias of constantVoltage.n.v but they do not match
Variable heatCapacitor.port.T is declared as an alias of heatCapacitor.T but they do not match
Variable heatingResistor.T_heatPort is declared as an alias of heatCapacitor.T but they do not match
Variable heatingResistor.n.v is declared as an alias of constantVoltage.n.v but they do not match
Variable idealSwitch.T_heatPort is declared as an alias of idealSwitch.T but they do not match
Variable idealSwitch.p.v is declared as an alias of constantVoltage.p.v but they do not match
Variable temperatureSensor.port.T is declared as an alias of heatCapacitor.T but they do not match
Variable thermalConductor.port_a.T is declared as an alias of heatCapacitor.T but they do not match
Variable thermalConductor.port_b.T is declared as an alias of fixedTemperature.T but they do not match
There are some errors.

Comments and remarks can be addressed to fmicontact@siemens.com
