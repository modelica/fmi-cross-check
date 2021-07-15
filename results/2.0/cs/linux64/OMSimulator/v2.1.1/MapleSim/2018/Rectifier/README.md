The following command and script was used to simulate `Rectifier.fmu`:
```bash
> .omsimulator/OMSimulator-linux-amd64-v2.1.1/bin/OMSimulator --workingDir=results/2.0/cs/linux64/OMSimulator/v2.1.1/MapleSim/2018/Rectifier --stripRoot=true --skipCSVHeader=true --addParametersToCSV=true --suppressPath=true --timeout=60 Rectifier.lua
```

Rectifier.lua:
```lua
-- lua file for Rectifier.fmu
oms_setTempDirectory('/tmp/cross-check')
oms_newModel('model')
oms_addSystem('model.root', oms_system_wc)

-- instantiate FMU
oms_addSubModel('model.root.fmu', '../../../../../../../../../fmus/2.0/cs/linux64/MapleSim/2018/Rectifier/Rectifier.fmu')

-- simulation settings
oms_setResultFile('model', 'Rectifier_out.csv')
oms_setLoggingInterval('model', 0.0002)
oms_setStartTime('model', 0.0)
oms_setStopTime('model', 0.1)
oms_setTolerance('model', 1e-06, 1e-06)
oms_setFixedStepSize('model', 1e-07)

-- instantiate, initialize and simulate
oms_instantiate('model')
oms_initialize('model')
oms_simulate('model')
oms_terminate('model')
oms_delete('model')
```
See the [OMSimulator documentation](https://openmodelica.org/doc/OMSimulator/master/html/index.html) for more information.

