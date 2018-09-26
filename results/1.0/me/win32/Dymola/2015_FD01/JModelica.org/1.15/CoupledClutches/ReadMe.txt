Validation failed with csv compare
The csv comparison tool has knows problems with comparing
discrete signals. If declared as passed instead of failed,
manual checking of references has been done and deemed correct

The diference in result is due to that the input is not made as a step function at 0.9 but is interpolated as a continuous ramp