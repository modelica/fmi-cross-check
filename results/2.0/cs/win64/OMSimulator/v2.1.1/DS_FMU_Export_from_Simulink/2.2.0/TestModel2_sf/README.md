The following command and script was used to simulate `TestModel2_sf.fmu`:
```bash
> .omsimulator/OMSimulator-mingw64-v2.1.1/bin/OMSimulator.exe --workingDir=results/2.0/cs/win64/OMSimulator/v2.1.1/DS_FMU_Export_from_Simulink/2.2.0/TestModel2_sf --stripRoot=true --skipCSVHeader=true --addParametersToCSV=true --suppressPath=true --timeout=60 TestModel2_sf.lua
```

TestModel2_sf.lua:
```lua
-- lua file for TestModel2_sf.fmu
oms_setTempDirectory('C:/Temp/cross-check')
oms_newModel('model')
oms_addSystem('model.root', oms_system_wc)

-- instantiate FMU
oms_addSubModel('model.root.fmu', '../../../../../../../../../fmus/2.0/cs/win64/DS_FMU_Export_from_Simulink/2.2.0/TestModel2_sf/TestModel2_sf.fmu')
oms_addSubModel('model.root.input', '../../../../../../../../../fmus/2.0/cs/win64/DS_FMU_Export_from_Simulink/2.2.0/TestModel2_sf/TestModel2_sf_in.csv')

-- connect inputs to FMU
oms_addConnection('model.root.input.u1', 'model.root.fmu.u1')

-- simulation settings
oms_setResultFile('model', 'TestModel2_sf_out.csv')
oms_setLoggingInterval('model', 0.02)
oms_setStartTime('model', 0.0)
oms_setStopTime('model', 10.0)
oms_setTolerance('model', 1e-06, 0.001)
oms_setFixedStepSize('model', 0.001)

-- instantiate, initialize and simulate
oms_instantiate('model')
oms_initialize('model')
oms_simulate('model')
oms_terminate('model')
oms_delete('model')
```
See the [OMSimulator documentation](https://openmodelica.org/doc/OMSimulator/master/html/index.html) for more information.

