

###Description of Column Data

The measurements for this dataset are derived from the accelerometer and
gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ collected from a
Samsung Galaxy S smartphone.  

The data was collected from 30 test subjects, ages 19-48, wearing a Samsung Galaxy S smartphone
around their waist, doing 6 types of activities:
WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING

The raw data was obtained from the Machine Learning Repository at UCI:
[http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones#](http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones#)

The time domain signals (prefix 't' to denote time) in the raw data were captured at a constant rate of 50 Hz. 
Then they were filtered using a median filter and a 3rd order low pass Butterworth
filter with a corner frequency of 20 Hz to remove noise. Similarly, the
acceleration signal was then separated into body and gravity acceleration
signals (tBodyAcc-XYZ and tGravityAcc-XYZ) using another low pass Butterworth
filter with a corner frequency of 0.3 Hz. 

Subsequently, the body linear acceleration and angular velocity were derived in
time to obtain Jerk signals (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). Also the
magnitude of these three-dimensional signals were calculated using the
Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag,
tBodyGyroJerkMag). 

Finally a Fast Fourier Transform (FFT) was applied to some of these signals
producing fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccJerkMag,
fBodyGyroMag, fBodyGyroJerkMag. (Note the 'f' to indicate frequency
domain signals). 

The mean (-mean) and standard deviation (-std) were then estimated for each of 
these signals.  The estimated values were then averaged across each activity 
("WALKING", "WALKING_UPSTAIRS") for each subject (id=1:30), to produce this dataset ([tidy-activity-avgs.txt](tidy-activity-avgs.txt)).

Both the acceleration measurements (Acc) and the angular velocities measured by
the gyroscope (Gyro) are normalized between [-1,1].  The original units for
the acceleration measurements (Acc) are standard gravity units 'g'.  The original
units for the angular velocity measurements are radians/second.

The following is a list of each signal pattern.  '-XYZ' is used to denote 3-axial signals 
in the X, Y and Z directions (there is 1 column in the dataset for each axial).  For
each signal pattern there exists a column for its estimated mean (-mean) and standard
deviation (-std).

* tBodyAcc-XYZ              body acceleration measurements along XYZ axials 
* tGravityAcc-XYZ           gravity acceleration measurements along XYZ axials
* tBodyAccJerk-XYZ          acceleration "jerk" signal along XYZ axials
* tBodyGyro-XYZ             gyroscope measurements along XYZ axials
* tBodyGyroJerk-XYZ         gyroscope "jerk" signal along XYZ axials
* tBodyAccMag               magnitude of body acceleration measurements (Euclidean norm of XYZ vectors)
* tGravityAccMag            magnitude of gravity acceleration measurements (Euclidean norm of XYZ vectors)
* tBodyAccJerkMag           magnitude of acceleration "jerk" measurements (Euclidean norm of XYZ vectors)
* tBodyGyroMag              magnitude of gyroscope measurements (Euclidean norm of XYZ vectors)
* tBodyGyroJerkMag          magnitude of gyroscope "jerk" measurements (Euclidean norm of XYZ vectors)
* fBodyAcc-XYZ              FFT of tBodyAcc-XYZ
* fBodyAccJerk-XYZ          FFT of tBodyAccJerk-XYZ
* fBodyGyro-XYZ             FFT of tBodyGyro-XYZ
* fBodyAccMag               FFT of tBodyAccMag
* fBodyAccJerkMag           FFT of tBodyAccJerkMag
* fBodyGyroMag              FFT of tBodyGyroMag
* fBodyGyroJerkMag          FFT of tBodyGyroJerkMag


###Full Column List

1. subject                  ID - 1:30
1. activity                 WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING
1. tBodyAcc-mean()-X 
1. tBodyAcc-mean()-Y
1. tBodyAcc-mean()-Z
1. tGravityAcc-mean()-X
1. tGravityAcc-mean()-Y
1. tGravityAcc-mean()-Z
1. tBodyAccJerk-mean()-X
1. tBodyAccJerk-mean()-Y
1. tBodyAccJerk-mean()-Z
1. tBodyGyro-mean()-X
1. tBodyGyro-mean()-Y
1. tBodyGyro-mean()-Z
1. tBodyGyroJerk-mean()-X
1. tBodyGyroJerk-mean()-Y
1. tBodyGyroJerk-mean()-Z
1. tBodyAccMag-mean()
1. tGravityAccMag-mean()
1. tBodyAccJerkMag-mean()
1. tBodyGyroMag-mean()
1. tBodyGyroJerkMag-mean()
1. fBodyAcc-mean()-X
1. fBodyAcc-mean()-Y
1. fBodyAcc-mean()-Z
1. fBodyAccJerk-mean()-X
1. fBodyAccJerk-mean()-Y
1. fBodyAccJerk-mean()-Z
1. fBodyGyro-mean()-X
1. fBodyGyro-mean()-Y
1. fBodyGyro-mean()-Z
1. fBodyAccMag-mean()
1. fBodyBodyAccJerkMag-mean()
1. fBodyBodyGyroMag-mean()
1. fBodyBodyGyroJerkMag-mean()
1. tBodyAcc-std()-X
1. tBodyAcc-std()-Y
1. tBodyAcc-std()-Z
1. tGravityAcc-std()-X
1. tGravityAcc-std()-Y
1. tGravityAcc-std()-Z
1. tBodyAccJerk-std()-X
1. tBodyAccJerk-std()-Y
1. tBodyAccJerk-std()-Z
1. tBodyGyro-std()-X
1. tBodyGyro-std()-Y
1. tBodyGyro-std()-Z
1. tBodyGyroJerk-std()-X
1. tBodyGyroJerk-std()-Y
1. tBodyGyroJerk-std()-Z
1. tBodyAccMag-std()
1. tGravityAccMag-std()
1. tBodyAccJerkMag-std()
1. tBodyGyroMag-std()
1. tBodyGyroJerkMag-std()
1. fBodyAcc-std()-X
1. fBodyAcc-std()-Y
1. fBodyAcc-std()-Z
1. fBodyAccJerk-std()-X
1. fBodyAccJerk-std()-Y
1. fBodyAccJerk-std()-Z
1. fBodyGyro-std()-X
1. fBodyGyro-std()-Y
1. fBodyGyro-std()-Z
1. fBodyAccMag-std()
1. fBodyBodyAccJerkMag-std()
1. fBodyBodyGyroMag-std()
1. fBodyBodyGyroJerkMag-std()
