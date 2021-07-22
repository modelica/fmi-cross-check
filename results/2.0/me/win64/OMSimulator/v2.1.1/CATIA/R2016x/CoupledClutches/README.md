The following command and script was used to simulate `CoupledClutches.fmu`:
```bash
> .omsimulator/OMSimulator-mingw64-v2.1.1/bin/OMSimulator.exe --workingDir=results/2.0/me/win64/OMSimulator/v2.1.1/CATIA/R2016x/CoupledClutches --stripRoot=true --skipCSVHeader=true --addParametersToCSV=true --suppressPath=true --timeout=60 CoupledClutches.lua
```

CoupledClutches.lua:
```lua
-- lua file for CoupledClutches.fmu
oms_setTempDirectory('C:/Temp/cross-check')
oms_newModel('model')
oms_addSystem('model.root', oms_system_sc)

-- instantiate FMU
oms_addSubModel('model.root.fmu', '../../../../../../../../../fmus/2.0/me/win64/CATIA/R2016x/CoupledClutches/CoupledClutches.fmu')
oms_addSubModel('model.root.input', '../../../../../../../../../fmus/2.0/me/win64/CATIA/R2016x/CoupledClutches/CoupledClutches_in.csv')

-- connect inputs to FMU
oms_addConnection('model.root.input.step2', 'model.root.fmu.step2')

-- simulation settings
oms_setResultFile('model', 'CoupledClutches_out.csv')
oms_setLoggingInterval('model', 0.003)
oms_setStartTime('model', 0.0)
oms_setStopTime('model', 1.5)
oms_setTolerance('model', 1e-06, 0.0001)
oms_setVariableStepSize('model', 1e-12, 1e-12, 0.003)

-- instantiate, initialize and simulate
oms_instantiate('model')
oms_initialize('model')
oms_simulate('model')
oms_terminate('model')
oms_delete('model')
```
See the [OMSimulator documentation](https://openmodelica.org/doc/OMSimulator/master/html/index.html) for more information.

