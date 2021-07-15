The following command and script was used to simulate `Feedthrough.fmu`:
```bash
> .omsimulator/OMSimulator-linux-amd64-v2.1.1/bin/OMSimulator --workingDir=results/2.0/me/linux64/OMSimulator/v2.1.1/Test-FMUs/0.0.2/Feedthrough --stripRoot=true --skipCSVHeader=true --addParametersToCSV=true --suppressPath=true --timeout=60 Feedthrough.lua
```

Feedthrough.lua:
```lua
-- lua file for Feedthrough.fmu
oms_setTempDirectory('/tmp/cross-check')
oms_newModel('model')
oms_addSystem('model.root', oms_system_sc)

-- instantiate FMU
oms_addSubModel('model.root.fmu', '../../../../../../../../../fmus/2.0/me/linux64/Test-FMUs/0.0.2/Feedthrough/Feedthrough.fmu')
oms_addSubModel('model.root.input', '../../../../../../../../../fmus/2.0/me/linux64/Test-FMUs/0.0.2/Feedthrough/Feedthrough_in.csv')

-- connect inputs to FMU
oms_addConnection('model.root.input.real_tunable_param', 'model.root.fmu.real_tunable_param')
oms_addConnection('model.root.input.real_continuous_in', 'model.root.fmu.real_continuous_in')
oms_addConnection('model.root.input.real_discrete_in', 'model.root.fmu.real_discrete_in')
oms_addConnection('model.root.input.int_in', 'model.root.fmu.int_in')
oms_addConnection('model.root.input.bool_in', 'model.root.fmu.bool_in')

-- simulation settings
oms_setResultFile('model', 'Feedthrough_out.csv')
oms_setLoggingInterval('model', 0.004)
oms_setStartTime('model', 0.0)
oms_setStopTime('model', 2.0)
oms_setTolerance('model', 1e-06, 1e-05)
oms_setVariableStepSize('model', 1e-12, 1e-12, 0.004)

-- instantiate, initialize and simulate
oms_instantiate('model')
oms_initialize('model')
oms_simulate('model')
oms_terminate('model')
oms_delete('model')
```
See the [OMSimulator documentation](https://openmodelica.org/doc/OMSimulator/master/html/index.html) for more information.

