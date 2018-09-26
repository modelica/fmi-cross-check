 AVL Model.CONNECT 2015.1 - Cross Check Results
================================================

Cross Check Example: MapleSim/7.01/CoupledClutches
FMI Version: FMI 2.0 ModelExchange
Platform: win64

Status: passed

Used Settings:
End Time: 1.5
Delta Time: 0.01
Load the input csv file into the signal table and connect the outputs to the fmu.
Change interpolation to constant. This is necessary because the input data contains discrete jumps.
Activate results for internal variables.

Additional Notes:
According to the description, the input should jump at time 0.9 seconds from 0.0 to 1.0. Hence, the input data has to be modified to be 1.0 at time 0.9 seconds.

Contact:
Model.CONNECT@avl.com
