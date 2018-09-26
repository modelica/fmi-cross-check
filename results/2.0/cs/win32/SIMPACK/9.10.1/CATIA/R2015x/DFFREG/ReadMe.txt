Simulate the FMU within SIMPACK
-------------------------------

- Copy the Test-FMU to the directory of this file
- Run the SIMPACK solver with the SIMPACK test model provided in this
  directory:
  /<path>/<to>/<inst>/run/bin/<OS>/simpack-slv fmu_import.spck

OR

- Copy the Test-FMU to the directory of this file
- Start the SIMPACK graphical user interface, load the model fmu_import.spck
  provided in this directory and run a time integration:
  Menu: Solver / Time Integration / Offline

Please note that the SIMPACK test model fmu_import.spck is specific to the
FMU provided in this directory.


Failed/Rejected FMUs
--------------------

See the content of the "failed" or "rejected" file for the reason of the
failure or rejection.
This file may refer to the file simpack-slv.out.txt where detailed warning
and error messages of the simulation of the FMU within SIMPACK are provided.
