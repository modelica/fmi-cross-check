Tool:
  FMI Blockset for Simulink
Version:
  2014.1
Tested with:
  Matlab/Simulink 8.1.0.604 (R2013a)
FMU used:
  Path='../../../../../../../../../Test_FMUs/FMI_1.0/CoSimulation/win64/ControlBuild/2013-2a/Compute/compute.fmu'
  Identifier='compute'
Notes:
  Example models provided
  To run the examples you need to set the following values in the Matlab workspace
    tolerance = 1.000000e-03;
    test_fmu_path = 'H:/FMI/sandbox/Test_FMUs/FMI_1.0/CoSimulation/win64/';
    tool_name = 'ControlBuild/';
    tool_version = '2013-2a/';
    fmu_name = 'Compute';
  The variable test_fmu_path should point to the location of the Test_FMUs
Results:
  The results did not match the reference results within the allowed tolerance
