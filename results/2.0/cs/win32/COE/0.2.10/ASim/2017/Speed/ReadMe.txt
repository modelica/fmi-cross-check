# INTO-CPS Co-simulation Orchestration Engine (COE)

The COE does not support standalone simulation of individual FMUs, but only
co-simulations i.e. it needs at least two FMUs. Therefore a custom main class is
ued which automatically generates an inverted version of the test FMU where all
outputs of the FMU under test is created as inputs. The main class also reads
opt file and automatically creates a co-simulation configuration.

COE execution arguments:

```
java -cp coe.jar org.intocps.orchestration.coe.single.SingleSimMain -xplot -readme -level WARN -fmu ../../../../../../../../../Test_FMUs/FMI_2.0/CoSimulation/win32/ASim/2017/Speed_SWC/Speed_SWC.fmu -opt ../../../../../../../../../Test_FMUs/FMI_2.0/CoSimulation/win32/ASim/2017/Speed_SWC/Speed_SWC_ref.opt -ref ../../../../../../../../../Test_FMUs/FMI_2.0/CoSimulation/win32/ASim/2017/Speed_SWC/Speed_SWC_ref.csv
```

An index.html report is also generated showing all output signals as graphs
plotted in relation to the reference singal. Both signals are linear
interpolated and their difference plottet with the avage step size.

Contact: into-cps@eng.au.dk