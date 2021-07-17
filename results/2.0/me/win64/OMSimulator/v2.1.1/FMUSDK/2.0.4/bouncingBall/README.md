The following command and script was used to simulate `bouncingBall.fmu`:
```bash
> .omsimulator/OMSimulator-mingw64-v2.1.1/bin/OMSimulator.exe --workingDir=results/2.0/me/win64/OMSimulator/v2.1.1/FMUSDK/2.0.4/bouncingBall --stripRoot=true --skipCSVHeader=true --addParametersToCSV=true --suppressPath=true --timeout=60 bouncingBall.lua
```

bouncingBall.lua:
```lua
-- lua file for bouncingBall.fmu
oms_setTempDirectory('C:/Temp/cross-check')
oms_newModel('model')
oms_addSystem('model.root', oms_system_sc)

-- instantiate FMU
oms_addSubModel('model.root.fmu', '../../../../../../../../../fmus/2.0/me/win64/FMUSDK/2.0.4/bouncingBall/bouncingBall.fmu')

-- simulation settings
oms_setResultFile('model', 'bouncingBall_out.csv')
oms_setLoggingInterval('model', 0.008)
oms_setStartTime('model', 0.0)
oms_setStopTime('model', 4.0)
oms_setTolerance('model', 1e-06, 0.01)
oms_setVariableStepSize('model', 1e-12, 1e-12, 0.01)

-- instantiate, initialize and simulate
oms_instantiate('model')
oms_initialize('model')
oms_simulate('model')
oms_terminate('model')
oms_delete('model')
```
See the [OMSimulator documentation](https://openmodelica.org/doc/OMSimulator/master/html/index.html) for more information.

