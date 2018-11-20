Model Description:
	This model is a FSM that compares serial flows exported with HIFSuite starting from a VHDL description.

Notes:
	At each execution of fmi2DoStep, the digital model simulates for one clock cycle, independently from the communicationStepSize (time to simulate) passed as a parameter of the function.
	FMU does not support variable communication stepsize. Stepsize may not be altered to reach stopTime exactly.
	The description field of each port, inside the modelDescription.xml file, reports the real datatype of the model ports.
	All the Integer I/O ports of the FMU must be considered as Unsigned Integer type.

Generating tool:
	HIFSuite 2017.05-antlia

Compiler:
	gcc 6.3.0 64 bit

Available Platforms:
	linux64

FMU Checker:
	FMUChecker-2.0.4-linux64

Contact:
	hifsuite@edalab.it
