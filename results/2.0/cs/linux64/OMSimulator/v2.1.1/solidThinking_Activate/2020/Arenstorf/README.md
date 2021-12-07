The following command and script was used to simulate `Arenstorf.fmu`:
```bash
> .omsimulator/OMSimulator-linux-amd64-v2.1.1/bin/OMSimulator --workingDir=results/2.0/cs/linux64/OMSimulator/v2.1.1/solidThinking_Activate/2020/Arenstorf --stripRoot=true --skipCSVHeader=true --addParametersToCSV=true --suppressPath=true --timeout=60 Arenstorf.lua
```

Arenstorf.lua:
```lua
-- lua file for Arenstorf.fmu
oms_setTempDirectory('/tmp/cross-check')
oms_newModel('model')
oms_addSystem('model.root', oms_system_wc)

-- instantiate FMU
oms_addSubModel('model.root.fmu', '../../../../../../../../../fmus/2.0/cs/linux64/solidThinking_Activate/2020/Arenstorf/Arenstorf.fmu')

-- simulation settings
oms_setResultFile('model', 'Arenstorf_out.csv')
oms_setLoggingInterval('model', 0.2)
oms_setStartTime('model', 0.0)
oms_setStopTime('model', 20.0)
oms_setTolerance('model', 0.0001, 0.0001)
oms_setFixedStepSize('model', 0.04)

-- instantiate, initialize and simulate
oms_instantiate('model')
oms_initialize('model')
oms_simulate('model')
oms_terminate('model')
oms_delete('model')
```
See the [OMSimulator documentation](https://openmodelica.org/doc/OMSimulator/master/html/index.html) for more information.

