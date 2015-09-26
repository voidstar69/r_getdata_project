The tidy data in this repo is based upon the original data retrieved from:
https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

A description of this original data can be found here:
http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones 

See README.md for a description of how the script "run_analysis.R" transforms the above data into tidy data, and summarises it. The tidy data ends up in a data frame named "mergedFrame", and the summarised data in a data frame named "castFrame". The summarised data averages all variables per Activity and Subject.

Variables in the produced tidy data
-----------------------------------
Subject - an identifier of the subject who carried out the experiment (range is 1 to 30).
Activity - a label of the activity undertaken by the subject (e.g. "SITTING", "WALKING").

The mean and standard deviation of various derived signals. The derived signals are based upon 3-axial raw signals from accelerometer and gyroscope. Signals are normalized and bounded within [-1,1]. The X, Y and Z components of each signal are split across three columns. The column names are based upon the signal names below, but also include "mean" or "std" in the column name to indicate the calculation performed.

The various derived signals are:

- tBodyAcc-XYZ
- tGravityAcc-XYZ
- tBodyAccJerk-XYZ
- tBodyGyro-XYZ
- tBodyGyroJerk-XYZ
- tBodyAccMag
- tGravityAccMag
- tBodyAccJerkMag
- tBodyGyroMag
- tBodyGyroJerkMag
- fBodyAcc-XYZ
- fBodyAccJerk-XYZ
- fBodyGyro-XYZ
- fBodyAccMag
- fBodyAccJerkMag
- fBodyGyroMag
- fBodyGyroJerkMag
