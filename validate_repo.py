from __future__ import print_function

import sys
import os
import numpy as np
from fmpy import read_model_description
from fmpy.util import read_ref_opt_file


def read_csv(filename, variable_names=None):
    """ Read a CSV file that conforms to the FMI cross-check rules

    Parameters:
        filename         name of the CSV file to read
        variable_names   list of legal variable names

    Returns:
        traj             the trajectoies read from the CSV file
    """

    # pass an empty string as deletechars to preserve special characters
    traj = np.genfromtxt(filename, delimiter=',', names=True, deletechars='')

    # get the time
    time = traj[traj.dtype.names[0]]

    # check if the time is monotonically increasing
    if traj.size > 1 and np.any(np.diff(time) < 0):
        raise Exception("Values in first column (time) are not monotonically increasing")

    # check if all variables exist in the FMU
    if variable_names is not None:
        for name in traj.dtype.names[1:]:
            if name not in variable_names:
                raise Exception("Variable '%s' does not exist in the FMU" % name)

    return traj


def validate_test_fmu(model_dir):
    """ Validate an exported FMU

    Parameters:
        model_dir  path to the directory that contains the exported FMU

    Returns:
        a list of problems
    """

    problems = []

    # check file sizes
    for root, dirs, files in os.walk(model_dir):
        for file in files:
            filename = os.path.join(root, file)
            filesize = os.path.getsize(filename)
            maxsize = 10e6 if file.endswith('.fmu') else 1e6
            if filesize > maxsize:
                problems.append("%s is larger than %g MB (%g MB)" % (filename, maxsize * 1e-6, filesize * 1e-6))

    if 'notCompliantWithLatestRules' in files:
        return problems  # stop here

    path, model_name = os.path.split(model_dir)
    path, _ = os.path.split(path)
    path, _ = os.path.split(path)
    path, platform = os.path.split(path)
    path, fmi_type = os.path.split(path)
    _, fmi_version = os.path.split(path)

    fmu_filename = os.path.join(model_dir, model_name + '.fmu')

    # validate the modelDescription.xml
    try:
        model_description = read_model_description(fmu_filename, validate=True, validate_variable_names=True, validate_model_structure=True)
    except Exception as e:
        problems.append("Error in %s. %s" % (fmu_filename, e))
        return problems  # stop here

    # check FMI version
    if model_description.fmiVersion != fmi_version:
        problems.append("%s is not an FMI %s FMU" % (fmu_filename, fmi_version))
        return problems  # stop here

    # check FMI type
    if fmi_type == 'cs' and model_description.coSimulation is None:
        problems.append("%s does not support co-simulation" % fmu_filename)
        return problems  # stop here
    elif fmi_type == 'me' and model_description.modelExchange is None:
        problems.append("%s does not support model-exchange" % fmu_filename)
        return problems  # stop here

    # collect the variable names
    variable_names = [v.name for v in model_description.modelVariables]

    # check the reference options file
    try:
        ref_opts_filename = os.path.join(model_dir, model_name + '_ref.opt')
        read_ref_opt_file(ref_opts_filename)
    except Exception as e:
        problems.append("Error in %s. %s" % (ref_opts_filename, e))

    # check the CSVs
    for suffix, required in [('_in.csv', False), ('_ref.csv', True)]:

        csv_filename = os.path.join(model_dir, model_name + suffix)

        if not required and not os.path.isfile(csv_filename):
            continue

        try:
            read_csv(csv_filename, variable_names=variable_names)
        except Exception as e:
            problems.append("Error in %s. %s" % (csv_filename, e))

    return problems


def segments(path):
    """ Split a path into segments """

    s = []

    head, tail = os.path.split(path)

    while tail:
        s.insert(0, tail)
        head, tail = os.path.split(head)

    s.insert(0, head)

    return s


def validate_repo(vendor_dir, clean_up=False):

    problems = []

    s = segments(vendor_dir)

    fmu_count = 0

    # validate the test FMUs
    for subdir, dirs, files in os.walk(os.path.join(vendor_dir, 'fmus')):

        t = segments(subdir)

        if len(t) - len(s) != 7:
            continue

        fmu_count += 1

        fmi_version, fmi_type, platform, tool_name, tool_version, model_name = t[-6:]

        if fmi_version not in ['1.0', '2.0']:
            continue

        if fmi_type not in ['cs', 'me']:
            continue

        if platform not in ['c-code', 'darwin64', 'linux32', 'linux64', 'win32', 'win64']:
            continue

        new_problems = validate_test_fmu(subdir)

        if new_problems and clean_up:
            not_compliant_file = os.path.join(subdir, 'notCompliantWithLatestRules')
            print("Adding %s" % not_compliant_file)
            with open(not_compliant_file, 'a'):
                pass

        problems += new_problems

    return fmu_count, problems


if __name__ == '__main__':

    xc_repo = os.path.dirname(__file__)

    fmu_count, problems = validate_repo(xc_repo, clean_up=False)

    print()
    print("#################################")
    print("%d problems found in %s" % (len(problems), xc_repo))
    print("Validated %d FMUs" % fmu_count)
    print("#################################")
    print()

    for problem in problems:
        print()
        print(problem)

    sys.exit(len(problems))
