The following command and script was used to simulate `CoupledClutches.fmu`:
```bash
> .omsimulator/OMSimulator-linux-amd64-v2.1.1/bin/OMSimulator --workingDir=results/2.0/cs/linux64/OMSimulator/v2.1.1/MapleSim/2018/CoupledClutches --stripRoot=true --skipCSVHeader=true --addParametersToCSV=true --suppressPath=true --timeout=60 CoupledClutches.lua
```

CoupledClutches.lua:
```lua
-- lua file for CoupledClutches.fmu
oms_setTempDirectory('/tmp/cross-check')
oms_newModel('model')
oms_addSystem('model.root', oms_system_wc)

-- instantiate FMU
oms_addSubModel('model.root.fmu', '../../../../../../../../../fmus/2.0/cs/linux64/MapleSim/2018/CoupledClutches/CoupledClutches.fmu')
oms_addSubModel('model.root.input', '../../../../../../../../../fmus/2.0/cs/linux64/MapleSim/2018/CoupledClutches/CoupledClutches_in.csv')

-- connect inputs to FMU
oms_addConnection('model.root.input.inputs', 'model.root.fmu.inputs')

-- simulation settings
oms_setResultFile('model', 'CoupledClutches_out.csv')
oms_setLoggingInterval('model', 0.003)
oms_setStartTime('model', 0.0)
oms_setStopTime('model', 1.5)
oms_setTolerance('model', 1e-06, 1e-06)
oms_setFixedStepSize('model', 0.01)

-- instantiate, initialize and simulate
oms_instantiate('model')
oms_initialize('model')
oms_simulate('model')
oms_terminate('model')
oms_delete('model')
```
See the [OMSimulator documentation](https://openmodelica.org/doc/OMSimulator/master/html/index.html) for more information.

