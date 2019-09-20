# Notes on import of lights_control.fmu

## Importing Tool

The FMU lights_control.fmu was imported with 4.0.4.60382 (08/27/19) x64 using a CVODE solver.

The import was passed

The import is internally done with a much smaller protocol step width and with protocolling before and after every discontinuity. Therefore, the result comparison is done with a much more precise result output. Since the FMI Cross-Check rules stipulate that CSV files must not be larger than 1MB, the uploaded result CSV is sampled at equidistant points and thus reduced in size. Internally, an import test is much more restrictive.

## Comparison Options

We used the CSV compare with the options:

|Option|Value|
|-----:|:----|
|ToleranceX|2.000000E-003|
|ToleranceY|2.000000E-003|
|TubeXMin|2.000000E-015|
|TubeYMin|2.000000E-015|
|IgnoreEqualTimeStartPoints|False|

## Contact

[Contact our customer center](https://www.simulationx.com/customer-center.html). The import test run was executed by bbi@esi-group.com.
ESI ITI GmbH, Schweriner Strasse 1, 01067 Dresden
[https://www.simulationx.com](https://www.simulationx.com)

## Notes

* FMU used was provided in the unmerged branch https://github.com/StefanOltean/fmi-cross-check/commits/master
* [Pull request](https://github.com/modelica/fmi-cross-check/pull/72) has been filed by Stefan Oltean, QTronic

