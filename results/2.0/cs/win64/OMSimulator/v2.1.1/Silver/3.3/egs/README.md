The following command and script was used to simulate `egs.fmu`:
```bash
> .omsimulator/OMSimulator-mingw64-v2.1.1/bin/OMSimulator.exe --workingDir=results/2.0/cs/win64/OMSimulator/v2.1.1/Silver/3.3/egs --stripRoot=true --skipCSVHeader=true --addParametersToCSV=true --suppressPath=true --timeout=60 egs.lua
```

egs.lua:
```lua
-- lua file for egs.fmu
oms_setTempDirectory('C:/Temp/cross-check')
oms_newModel('model')
oms_addSystem('model.root', oms_system_wc)

-- instantiate FMU
oms_addSubModel('model.root.fmu', '../../../../../../../../../fmus/2.0/cs/win64/Silver/3.3/egs/egs.fmu')
oms_addSubModel('model.root.input', '../../../../../../../../../fmus/2.0/cs/win64/Silver/3.3/egs/egs_in.csv')

-- connect inputs to FMU
oms_addConnection('model.root.input.accelPedal', 'model.root.fmu.accelPedal')
oms_addConnection('model.root.input.k15', 'model.root.fmu.k15')
oms_addConnection('model.root.input.prnd', 'model.root.fmu.prnd')
oms_addConnection('model.root.input.nAtIn', 'model.root.fmu.nAtIn')
oms_addConnection('model.root.input.nAtOut', 'model.root.fmu.nAtOut')

-- simulation settings
oms_setResultFile('model', 'egs_out.csv')
oms_setLoggingInterval('model', 0.06712)
oms_setStartTime('model', 0.0)
oms_setStopTime('model', 33.56)
oms_setTolerance('model', 1e-06, 0.01)
oms_setFixedStepSize('model', 0.01)

-- instantiate, initialize and simulate
oms_instantiate('model')
oms_initialize('model')
oms_simulate('model')
oms_terminate('model')
oms_delete('model')
```
See the [OMSimulator documentation](https://openmodelica.org/doc/OMSimulator/master/html/index.html) for more information.

