Validation failed with csv compare
The csv comparison tool has knows problems with comparing
discrete signals. If declared as passed instead of failed,
manual checking of references has been done and deemed correct

The difference in output is depenetn on how the master is made
For dymola input is set at time t+h then dostep is done form time t-> t+h this to reduce error with direct dependency
This correction is not done for the reference file and therfore the difference in the result


