Simulation succeed 
 
 SETUP INSTRUCTIONS: 
Following matlab commands will simulate the FMU:
 
fmu_path = PATH_TO_THE_FMU;
fmu = loadFMU(fmu_path);
opts = odeset('AbsTol',ABSOLUTE_TOLERANCE,'RelTol',RELATIVE_TOLERANCE);time = [StartTime:StepSize:StopTime];
input{1}.name = NAME1;
input{1}.vec = [time,INPUT_VECTOR1];
input{2}.name = NAME2;
input{2}.vec = [time,INPUT_VECTOR2];
outputs = {'out1','out2',...};
% for CS FMU:
[tout, yout, ynames] = fmu.simulate(time,'Outputs',outputs,'Inputs',inputs);
% for ME FMU:
[tout, yout, ynames] = fmu.simulate(time,'Outputs',outputs,'Inputs',inputs,'Options',opts);

Contact: emil.fredriksson@modelon.com or bengt-arne.andersson@modelon.com