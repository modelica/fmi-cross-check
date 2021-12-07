The following command and script was used to simulate `Pendulum.fmu`:
```bash
> .omsimulator/OMSimulator-mingw64-v2.1.1/bin/OMSimulator.exe --workingDir=results/2.0/cs/win64/OMSimulator/v2.1.1/solidThinking_Activate/2020/Pendulum --stripRoot=true --skipCSVHeader=true --addParametersToCSV=true --suppressPath=true --timeout=60 Pendulum.lua
```

Pendulum.lua:
```lua
-- lua file for Pendulum.fmu
oms_setTempDirectory('C:/Temp/cross-check')
oms_newModel('model')
oms_addSystem('model.root', oms_system_wc)

-- instantiate FMU
oms_addSubModel('model.root.fmu', '../../../../../../../../../fmus/2.0/cs/win64/solidThinking_Activate/2020/Pendulum/Pendulum.fmu')

-- simulation settings
oms_setResultFile('model', 'Pendulum_out.csv')
oms_setLoggingInterval('model', 0.05)
oms_setStartTime('model', 0.0)
oms_setStopTime('model', 5.0)
oms_setTolerance('model', 0.0001, 0.0001)
oms_setFixedStepSize('model', 0.01)

-- instantiate, initialize and simulate
oms_instantiate('model')
oms_initialize('model')
oms_simulate('model')
oms_terminate('model')
oms_delete('model')
```
See the [OMSimulator documentation](https://openmodelica.org/doc/OMSimulator/master/html/index.html) for more information.

