# FMI Cross-Check

This repository contains the exported FMUs and results for imported FMUs of the tools that take part in the FMI Cross-Check.
If your tool is listed on [fmi-standard.org/tools/](https://fmi-standard.org/tools/) you can add your FMUs and results by following the steps below.

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
              - Mode_lName_ref.opt
              - Mode_lName.fmu
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
| Mode_lName.fmu     | The exported FMU
| Mode_lName.fmu     | The exported FMU
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

`EXPERIMENTAL` Clone the FMPy repository and run the validation

```
git clone https://github.com/CATIA-Systems/FMPy.git --branch feature/fmi-xc
cd FMPy
python -m fmpy.cross_check.validate_vendor_repo /path/to/fmi-cross-check
```

## Make a pull-request

Fork the repository, commit your files to a new branch `add-Tool_ID-Tool_Version` and open a pull-request.
