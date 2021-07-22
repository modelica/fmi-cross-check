The following command and script was used to simulate `IntegrateSignal.fmu`:
```bash
> .omsimulator/OMSimulator-mingw64-v2.1.1/bin/OMSimulator.exe --workingDir=results/2.0/me/win64/OMSimulator/v2.1.1/FMIToolbox_MATLAB/2.3/IntegrateSignal --stripRoot=true --skipCSVHeader=true --addParametersToCSV=true --suppressPath=true --timeout=60 IntegrateSignal.lua
```

IntegrateSignal.lua:
```lua
-- lua file for IntegrateSignal.fmu
oms_setTempDirectory('C:/Temp/cross-check')
oms_newModel('model')
oms_addSystem('model.root', oms_system_sc)

-- instantiate FMU
oms_addSubModel('model.root.fmu', '../../../../../../../../../fmus/2.0/me/win64/FMIToolbox_MATLAB/2.3/IntegrateSignal/IntegrateSignal.fmu')
oms_addSubModel('model.root.input', '../../../../../../../../../fmus/2.0/me/win64/FMIToolbox_MATLAB/2.3/IntegrateSignal/IntegrateSignal_in.csv')

-- connect inputs to FMU
oms_addConnection('model.root.input.In1', 'model.root.fmu.In1')

-- simulation settings
oms_setResultFile('model', 'IntegrateSignal_out.csv')
oms_setLoggingInterval('model', 0.02)
oms_setStartTime('model', 0.0)
oms_setStopTime('model', 10.0)
oms_setTolerance('model', 1e-06, 1e-05)
oms_setVariableStepSize('model', 1e-12, 1e-12, 0.02)

-- instantiate, initialize and simulate
oms_instantiate('model')
oms_initialize('model')
oms_simulate('model')
oms_terminate('model')
oms_delete('model')
```
See the [OMSimulator documentation](https://openmodelica.org/doc/OMSimulator/master/html/index.html) for more information.

