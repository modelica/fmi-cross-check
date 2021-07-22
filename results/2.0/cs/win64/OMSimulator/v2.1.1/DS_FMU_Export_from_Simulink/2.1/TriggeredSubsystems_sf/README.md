The following command and script was used to simulate `TriggeredSubsystems_sf.fmu`:
```bash
> .omsimulator/OMSimulator-mingw64-v2.1.1/bin/OMSimulator.exe --workingDir=results/2.0/cs/win64/OMSimulator/v2.1.1/DS_FMU_Export_from_Simulink/2.1/TriggeredSubsystems_sf --stripRoot=true --skipCSVHeader=true --addParametersToCSV=true --suppressPath=true --timeout=60 TriggeredSubsystems_sf.lua
```

TriggeredSubsystems_sf.lua:
```lua
-- lua file for TriggeredSubsystems_sf.fmu
oms_setTempDirectory('C:/Temp/cross-check')
oms_newModel('model')
oms_addSystem('model.root', oms_system_wc)

-- instantiate FMU
oms_addSubModel('model.root.fmu', '../../../../../../../../../fmus/2.0/cs/win64/DS_FMU_Export_from_Simulink/2.1/TriggeredSubsystems_sf/TriggeredSubsystems_sf.fmu')

-- simulation settings
oms_setResultFile('model', 'TriggeredSubsystems_sf_out.csv')
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

