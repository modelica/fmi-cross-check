The following command and script was used to simulate `MIS_cs.fmu`:
```bash
> .omsimulator/OMSimulator-linux-amd64-v2.1.1/bin/OMSimulator --workingDir=results/2.0/cs/linux64/OMSimulator/v2.1.1/AMESim/15/MIS_cs --stripRoot=true --skipCSVHeader=true --addParametersToCSV=true --suppressPath=true --timeout=60 MIS_cs.lua
```

MIS_cs.lua:
```lua
-- lua file for MIS_cs.fmu
oms_setTempDirectory('/tmp/cross-check')
oms_newModel('model')
oms_addSystem('model.root', oms_system_wc)

-- instantiate FMU
oms_addSubModel('model.root.fmu', '../../../../../../../../../fmus/2.0/cs/linux64/AMESim/15/MIS_cs/MIS_cs.fmu')

-- simulation settings
oms_setResultFile('model', 'MIS_cs_out.csv')
oms_setLoggingInterval('model', 3.2e-05)
oms_setStartTime('model', 0.0)
oms_setStopTime('model', 0.016)
oms_setTolerance('model', 1e-06, 1e-05)
oms_setFixedStepSize('model', 1e-05)

-- instantiate, initialize and simulate
oms_instantiate('model')
oms_initialize('model')
oms_simulate('model')
oms_terminate('model')
oms_delete('model')
```
See the [OMSimulator documentation](https://openmodelica.org/doc/OMSimulator/master/html/index.html) for more information.

