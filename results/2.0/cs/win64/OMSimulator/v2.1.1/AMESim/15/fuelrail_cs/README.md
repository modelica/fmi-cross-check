The following command and script was used to simulate `fuelrail_cs.fmu`:
```bash
> .omsimulator/OMSimulator-mingw64-v2.1.1/bin/OMSimulator.exe --workingDir=results/2.0/cs/win64/OMSimulator/v2.1.1/AMESim/15/fuelrail_cs --stripRoot=true --skipCSVHeader=true --addParametersToCSV=true --suppressPath=true --timeout=60 fuelrail_cs.lua
```

fuelrail_cs.lua:
```lua
-- lua file for fuelrail_cs.fmu
oms_setTempDirectory('C:/Temp/cross-check')
oms_newModel('model')
oms_addSystem('model.root', oms_system_wc)

-- instantiate FMU
oms_addSubModel('model.root.fmu', '../../../../../../../../../fmus/2.0/cs/win64/AMESim/15/fuelrail_cs/fuelrail_cs.fmu')

-- simulation settings
oms_setResultFile('model', 'fuelrail_cs_out.csv')
oms_setLoggingInterval('model', 5.9999999999999995e-05)
oms_setStartTime('model', 0.0)
oms_setStopTime('model', 0.03)
oms_setTolerance('model', 1e-06, 1e-05)
oms_setFixedStepSize('model', 1e-06)

-- instantiate, initialize and simulate
oms_instantiate('model')
oms_initialize('model')
oms_simulate('model')
oms_terminate('model')
oms_delete('model')
```
See the [OMSimulator documentation](https://openmodelica.org/doc/OMSimulator/master/html/index.html) for more information.

