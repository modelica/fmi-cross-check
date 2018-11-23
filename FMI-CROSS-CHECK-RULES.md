# FMI Cross-Check: How to Improve FMI Compliance


## 1. Motivation for Cross-Check Rules Changes for 4.0

The growth of the Cross-Check (XC) repository and the result tables made it necessary to both rework the data handling concept and the display concepts. End of March 2018 a new infrastructure for the backend, data extraction and display was finalized reflecting roughly the Cross-Check Rules 3.1 with a number of improvements. What is new in XC 4.0:

- new repository structure and location

- new rules what to store in the repository

- new extraction process of the cross-check results

- new display mechanisms for the cross-check results

- new fee structure for showing tools at the cross-check site starting January 2019

Fees are introduced to speedup the development of the FMI standard and further improve both the standard and tool implementations. We are planning to involve professional writers for the standard documents, pay for new reference FMUs and major FMI Compliance Checker improvements, contract XC infrastructure improvements and hire back-office support to free the predominantly technical team from menial office tasks.


## 2. New Repository Structure

To facilitate this process, the Modelica Association created the [FMI cross-check repository](https://github.com/modelica/fmi-cross-check) on GitHub. The data was clean up to facilitate automation. A continuous integration service is now in place to check any submission that violates the submission rules outlined here.


## 3. New Rules what to store in the Repository

The growing number of FMUs provided makes it more and more important to automate cross-check activities for each vendor. The rules have now been tightened to allow automatic result comparison with specified epsilon bands.


## 4. New Result Extraction Process

The scripts that process the data were completely rewritten. While the previous pages on the FMI website were static HTML pages generated while processing the cross-check data, the new process involves compiling all the cross check data into a machine readable form and then rendering it dynamically on the web site. This allows visitors to the site to search and filter the FMI compliance data interactively. Instead of long tables and horizontal scrollbars, the new dynamic visualization encourages users to search, filter and zoom to explore the data which generally fits on a single page. Users can even bookmark specific search, filter and selection settings and/or email their results to others as a single URL.

If you find any issues, please report them in the [FMI cross-check repository](https://github.com/modelica/fmi-cross-check/issues).

Existing results and test FMUs provided in the repository that do not comply with the new rules were removed from the cross-check repository.

Vendors are encouraged to fix these excluded results and test FMUs.

## 5.	New Display of the Cross-Check Results

The new FMI Cross-Check infrastructure now displays tools and their status as well as individual results more dynamically. These new Cross-Check Rules will not define how to show these results anymore. The FMI Steering Committee may decide at any time to change the way these results are displayed to improve readability and show different levels of compliance.


## 6. New Fee structure for listing Tools at the FMI Cross-Check Site

The FMI project requires funds to help improve infrastructure and to run administration more professionally.

- It was decided to introduce an annual listing fee per tool of **2000,-- &euro;**.

-  If there are meaningful Cross-Check results published on the web-site (tool is shown with green status), the annual tool fee is reduced to **1000,-- &euro;**.
-  **This fee is waived for tools that are [open source](https://opensource.org/osd)**.

-  The FMI MAP reserves the right to change these fees and their structure from year to year.

-  Fees are bound to a calendar year.

-  The listing fee will not entitle tool vendors to influence how the results are being displayed.

The FMI Steering Committee is sole decision maker for changes to the display mechanisms. If vendors do not agree how the results are displayed, vendors can ask at any time for removal of their data. Fees are non-refundable in any case.


## 7. Reference FMUs

In addition to FMUs exported by tools listed in the tools table, there will be a (growing) number of Reference FMUs. Mostly manually built, they test correct implementation of different FMU properties, such as call sequence compliance. In a sense, these FMUs are the opposite of the FMI Compliance Checker.

Reference FMUs log standard violations using error messages and may stop the simulation to indicate severe violations of the standard.

Experience with the first Reference FMUs will help us to refine their usage better in the future.

The set of Reference FMUs may change over time. Reference FMU sets are also versioned, like tools. New FMUs may appear in new versions of the set of Reference FMUs.


## 8. Changes to the FMI Cross-Check Rules

- Changes to the Reference FMUs will automatically require a new version.

- Rules for the FMI Cross-Check may change at most once every 12 months (including fee schedule) - taking effect at the beginning of the next calendar year (exception for this version 4.0 which will take effect ASAP after accepted by the FMI Steering Committee). Exceptions: Clarifications and corrections reflecting implementations of the infrastructure may always be made to the rules document.

- Information about rule changes will be communicated to fmi-design@fmi-standard.org as well as the email addresses documented in the tool info csv file.

- If the submission rules for FMI Cross-Check are changed, non-compliant entries will be removed and vendors are encouraged to resubmit with compliant files.

- The FMI Steering Committee has the right to change the status or even remove a tool from the fmi-standard.org web pages if test results are deemed insufficient or unreproducible.


## 9. Submission Rules of FMI Cross-Check

- All tests must be made using officially released tool versions, **with the exception that license checks may be removed from exported FMUs by the tool vendors**. Vendors are encouraged to participate with multiple versions of their tools, as a tool version is often crucial for success, and users do not always use latest tool versions.

- All test results will be published on the FMI web pages and public repositories. Tool vendors are required to submit detailed information to support their compatibility claim and to make repeating compatibility tests easy for other parties. While FMUs must not be changed after submission, other files may be changed in order to 1) comply with new submission and formatting rules or 2) to update information such as contact details in readme files.


### 9.1 FMU Exporting

FMU exporting tools must export and publish at least three FMUs for each platform and FMI variant they claim to support. These FMUs must conform to the respective specification of the FMI type and version they claim to support. Vendors are encouraged to pick examples that showcase a wide variety of tool and FMI features without making each example unnecessarily complex.
Furthermore, it is required that at least one importing tool from a different vendor has reported successful import of at least 3 FMUs for at least one of the supported platforms in order to qualify for the green status. (Filtering – e.g. by platform – will lead to limiting the display of tools).


#### 9.1.2 FMI Compliance Checker

Vendors must simulate all submitted FMUs with the FMI Compliance Checker for all supported platforms, FMI versions and FMI types. This test is deemed successful, if no errors are produced by the FMI Compliance Checker. Vendors are encouraged to produce FMUs that are also free of all FMI Compliance Checker warnings.

FMUs for the “c-code” platform are exempt from this rule until the FMI Compliance Checker supports the “c-code” platform.

If the FMU has inputs, the FMI Compliance Checker must be run with the input signals as specified in {Model_Name}_in.csv.
Vendors are encouraged to report problems and improvement suggestions for the FMI Compliance Checker [here](https://github.com/modelica-tools/FMUComplianceChecker).


#### 9.1.3 License Checks

All FMUs submitted to the repository must run without license checks and contain all required files (DLLs, data files etc.) to allow running in any importing tool supporting the specified platform without additional requirements.
Vendors that create only FMUs with license check or FMUs that provide access to licensed tools and would like to be listed in the Cross-Check Table have to organize one-to-one tests with importing tool vendors to solve license or compile/link issues.


#### 9.1.4 Files to submit

To submit per exported FMU stored on the repository:

- `{Model_Name}.fmu`: The FMU. If the FMU cannot be provided (e.g. because it contains critical intellectual property), submit a file {Model_Name}.nofmu. The README file shall contain information about how to get access to that FMU directly from the exporting tool vendor.

- `{Model_Name}_ref.csv`: Reference solution as computed by the exporting tool. It is recommended to limit the file to at most 10 of the important variables. The solution must contain StartTime and EndTime as specified in {Model_Name}_ref.opt.

- `{Model_Name}_in.csv`: optional input signals in case the FMU has inputs. The variables in this file must match the input variables defined in the modelDescription.xml. If intermediate values are required for continuous signals, linear interpolation is to be applied.

- `{Model_Name}_ref.opt`: Options used to create reference output and to guide comparing against, CSV format, required elements:

```
StartTime, 0.0         // in seconds
StopTime, 0.0          // in seconds
StepSize, 0.01         // in seconds, 0.0 means variable step solver
RelTol, 0.0001
// optional elements:
AbsTol, 2
SolverType, FixedStep  // see implementation notes for a list of predefined types
OutputIntervalLength   // reference data provided with this time spacing in seconds
```

- `notCompliantWithLatestRules`: If a submission does not comply with the latest submission rules, this file is present. To remove this file, vendors are allowed to adapt all files to comply with the newest rules (except {Model_Name}.fmu).

Observe the naming conventions given here, including case. We recommend keeping {Model_Name} short to avoid path length restriction problems on Windows.


#### 9.1.5 Directory Structure

Exported FMUs must be provided using the following directory structure.

`fmus/{FMI_Version}/{FMI_Type}/{Platform}/{Tool_Name}/{Tool_Version}/{Model_Name}`

Placeholder   | Possible Values
--------------|----------------
{FMI_Version} | `1.0`, `2.0`
{FMI_Type}    | `cs`, `me`
{Platform}    | `c-code`, `darwin64`, `linux32`, `linux64`, `win32`, `win64`

**Example:**

```
+ fmus
  + 2.0
    + cs
      + win64
        + SimTool
          + 2017.1
            + Rectifier
              - Rectifier_ref.csv
              - Rectifier_ref.opt
              - Rectifier.fmu
```


### 9.2 FMU importing

FMU importing tools must successfully import at least 3 FMUs for at least one supported platform of at least 3 exporting tools (3&times;3 FMUs per platform) by other vendors and run for as long as the `{Model_Name}_ref.opt` states and supply a CSV file of the solution they computed to receive a green status (Filtering – e.g. by platform – will lead to limiting the display of tools). If a `{Model_Name}_in.csv` is given for an FMU, the provided value trajectories for input variables must be used to produce the simulation results.


#### 9.2.1 Reference FMUs

FMU importing tools must report on importing for the latest versions of all Reference FMUs available at the time of upload, for the supported FMI Variant and supported platforms provided on the repository (Note: not required to “pass” because of potentially missing capabilities of the FMU or importer).


#### 9.2.2 License Checks

Vendors of tools that import FMUs that provide access to licensed tools and would like to be listed in the Cross-Check Table have to organize one-to-one tests with those tool vendors to produce testimonials for successful Cross-Check results.


#### 9.2.3 Files to submit

To submit per imported FMU:

- `{Model_Name}_out.csv`: Computed results as a CSV file for the same variables as given in the reference CSV file.

- In order to classify the result as `passed`, the results should correspond to the reference solution.

- Test results are indicated with one of the following files: `passed`, `rejected` or `failed`. If no such file is given, the test is considered `failed`.

- Optional: A test setup for the importing tool to simplify verification of the test run by anyone who licensed the importing tool. Ideally this uses some kind of automation provided by the importing tool.

- Optional: `README.md` (Markdown) or `README.txt` (plain text) with
  - a description of how to import and simulate the FMU, if no test setup is provided, and
  - in case of failure to run: an analysis of the reasons.

  This file is only needed if either test setup or test failure have to be described.

If a `passed` claim is made, the validation script will test the submitted results against the reference solution with a wide tolerance band. Violating such a loose correctness interpretation will lead to automatic rejection of the `passed` file.


#### 9.2.4 Directory Structure

Results for imported FMUs must be provided using the following directory structure.

`results/{FMI_Version}/{FMI_Type}/{Platform}/{Importing_Tool_Name}/{Importing_Tool_Version}/{Exporting_Tool_Name}/{Exporting_Tool_Version}/{Model_Name}`

Placeholder   | Possible Values
--------------|----------------
{FMI_Version} | `1.0`, `2.0`
{FMI_Type}    | `cs`, `me`
{Platform}    | `c-code`, `darwin64`, `linux32`, `linux64`, `win32`, `win64`

**Example**

```
+ results
  + 2.0
    + me
      + linux64
        + SimTool
          + 2017.1
            + OtherTool
              + 11.3
                + Rectifier
                  - passed
                  - Rectifier_out.csv
```


#### 9.2.5 Detection of Questionable Submissions Import Results

The provided import results are filtered against the reference solution provided by the exporter using the following epsilon band method:

Each reference signal is re-sampled (using linear interpolation) into an array of 1000 equally spaced samples between the first and last element of the reference time. The upper limit `y_max` of the epsilon band is calculated by taking the maximum of 21 neighboring values (10 to either side) at each sample point and adding 10% of the absolute maximum of all values in the reference signal (or `0.5` if all values are equal 0). The lower `y_min` is calculated respectively. The validation passes if at least 90% of the samples in the provided output are inside the epsilon band defined by `y_min` and `y_max` (again linearly interpolated at the respective sample time of the result file). Samples before and after the first and last sample time of the reference result will be ignored.


## 10. Appendix B – CSV Rules

CSV as input, output and reference file format is convenient as many tools support CSV import and export. However, CSV is not restrictive enough to allow easy exchange of time-based signals. Here we will declare a number of additional restrictions on top of the CSV format to ease handling:

- Separator: comma (`,`): separators may only be used between elements, not the end of a line

- Numbers must be unquoted and specified in the format used for floating point literals as in the C programming language (without the type suffix).

- All numeric cell entries contain numbers, labels for enumerations are not allowed (it would require readers to have access to the FMU information). Boolean values should be expressed as `0` and `1`.

- The first column contains the time. The values in time must be monotonically increasing.

- The first line contains the variable names quoted with double quotes (`"`)

- All variable names are exactly the same as defined in the modelDescription.xml (no additional variables are allowed)

- Starting with line 2, data is supplied (no units in line 2, no comments allowed)

- A CSV file must not be larger than 1 Megabyte.

**Example:**

```
"time","input[1]","input[2]"
0.0,1,-1.5
0.5,1,-2.1
0.5,2,-2.1
1.0,2,-2.1
```
