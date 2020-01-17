# FMI Cross-Check

[![CircleCI](https://circleci.com/gh/modelica/fmi-cross-check/tree/master.svg?style=svg)](https://circleci.com/gh/modelica/fmi-cross-check/tree/master)

This repository contains the exported FMUs and results for imported FMUs of the tools that take part in the FMI Cross-Check.
If your tool is listed on [fmi-standard.org/tools/](https://fmi-standard.org/tools/) you can add your FMUs and results by following the steps below.
For details see the official [FMI Cross-Check rules](FMI-CROSS-CHECK-RULES.md).

## Fork and clone the repository

[Fork and clone](https://help.github.com/articles/fork-a-repo/) the [fmi-cross-check repository](https://github.com/modelica/fmi-cross-check).
Create and checkout a new branch `add-Tool_ID-Tool_Version` where `Tool_ID` is a tool ID from [tools.csv](https://github.com/modelica/fmi-standard.org/blob/master/_data/tools.csv) and `Version` the tool's version for which you commit FMUs / results.

## Add FMUs

For every *exported* FMU add the following files:

```
fmus
  + FMI_Version
    + FMI_Type
      + Platform
        + Tool_ID
          + Tool_Version
            + Model_Name
              - Model_Name_in.csv  (optional)
              - Model_Name_ref.csv
              - Model_Name_ref.opt
              - Model_Name.fmu
              - README.[md|txt]
```

| File / Directory   | Description
|--------------------|------------
| FMI_Version        | `1.0`, `2.0`
| FMI_Type           | `cs` (Co-Simulation), `me` (Model Exchange)
| Platform           | `c-code`, `darwin32`, `linux32`, `linux64`, `win32`, `win64`
| Tool_ID            | Must match the tool ID in tools.csv
| Tool_Version       | The tool version
| Model_Name         | Name of the FMU (w/o file extension)
| Model_Name_in.csv  | Input file (optional)
| Model_Name_ref.csv | Reference results
| Model_Name_ref.opt | Simulation settings to reproduce reference results
| Model_Name.fmu     | The exported FMU
| README.txt         | A text (`.txt`) or Markdown (`.md`) file that describes the FMU (optional)

## Add results

For every *imported* FMU add the following files:

```
results
  + FMI_Version
    + FMI_Type
      + Platform
        + Importing_Tool_ID
          + Importing_Tool_Version
            + Exporing_Tool_ID
              + Exporting_Tool_Version
                + Model_Name
                  - Model_Name_out.csv
                  - passed / failed / rejected (optional)
                  - README.[md|txt]
```

| File / Directory       | Description
|------------------------|------------
| FMI_Version            | `1.0`, `2.0`
| FMI_Type               | `cs` (Co-Simulation), `me` (Model Exchange)
| Platform               | `c-code`, `darwin32`, `linux32`, `linux64`, `win32`, `win64`
| Importing_Tool_ID      | The importing tool's ID (as in tools.csv)
| Importing_Tool_Version | The importing tool's version
| Exporing_Tool_ID       | The exporting tool's ID (as in tools.csv)
| Exporting_Tool_Version | The exporting tool's version
| Model_Name             | Name of the imported FMU (w/o file extension)
| README.txt             | A text (`.txt`) or Markdown (`.md`) file that describes how to import the FMU

## Validate the files

Before pushing your changes to GitHub please validate the repository and fix any reported problems. To run the validation locally, install [FMPy 0.2.11](https://github.com/CATIA-Systems/FMPy#installation), change into the cloned `fmi-cross-check` repository and run

```
python -m fmpy.cross_check.validate_vendor_repo
```

The script will report all problems that have been found:

```
#################################
0 problems found in /path/to/fmi-cross-check
Validated 1233 FMUs and 10008 results
#################################
```

*Note:* You may need to run the script once with the optional argument `--clean-up`

```
python -m fmpy.cross_check.validate_vendor_repo --clean-up
```

in order to force it to go through all directories again. Otherwise it may claim all files to be correct, even though some errors persist.

## Make a pull request

Commit and push the changes to your fork and [create a pull request](https://help.github.com/articles/creating-a-pull-request/).
