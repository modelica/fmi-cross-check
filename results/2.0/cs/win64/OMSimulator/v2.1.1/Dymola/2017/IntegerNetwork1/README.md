The following command and script was used to simulate `IntegerNetwork1.fmu`:
```bash
> .omsimulator/OMSimulator-mingw64-v2.1.1/bin/OMSimulator.exe --workingDir=results/2.0/cs/win64/OMSimulator/v2.1.1/Dymola/2017/IntegerNetwork1 --stripRoot=true --skipCSVHeader=true --addParametersToCSV=true --suppressPath=true --timeout=60 IntegerNetwork1.lua
```

IntegerNetwork1.lua:
```lua
-- lua file for IntegerNetwork1.fmu
oms_setTempDirectory('C:/Temp/cross-check')
oms_newModel('model')
oms_addSystem('model.root', oms_system_wc)

-- instantiate FMU
oms_addSubModel('model.root.fmu', '../../../../../../../../../fmus/2.0/cs/win64/Dymola/2017/IntegerNetwork1/IntegerNetwork1.fmu')
oms_addSubModel('model.root.input', '../../../../../../../../../fmus/2.0/cs/win64/Dymola/2017/IntegerNetwork1/IntegerNetwork1_in.csv')

-- connect inputs to FMU
oms_addConnection('model.root.input.integerStep', 'model.root.fmu.integerStep')

-- simulation settings
oms_setResultFile('model', 'IntegerNetwork1_out.csv')
oms_setLoggingInterval('model', 0.2)
oms_setStartTime('model', 0.0)
oms_setStopTime('model', 10.0)
oms_setTolerance('model', 1e-06, 0.0001)
oms_setFixedStepSize('model', 0.02)

-- instantiate, initialize and simulate
oms_instantiate('model')
oms_initialize('model')
oms_simulate('model')
oms_terminate('model')
oms_delete('model')
```
See the [OMSimulator documentation](https://openmodelica.org/doc/OMSimulator/master/html/index.html) for more information.

