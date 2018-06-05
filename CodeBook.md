# Code Book
This code book describes the variables used in the R script 'run_analysis.R'

## Data source
The source data for the project is the 'Human Activity Recognition Using Smartphones Data Set which was built from the recordings of 30 subjects performing activities of daily living (ADL) while carrying a waist-mounted smartphone with embedded inertial sensors. Each person (subject) performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING)) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, 3-axial linear acceleration and 3-axial angular velocity measurements at a constant rate of 50Hz were captured.

The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. These time domain signals (prefix 't' to denote time) were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz.

Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag). Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. (Note the 'f' to indicate frequency domain signals).


Original files obtained from source:
'README.txt'
'features_info.txt': Information of features labels.
'features.txt': List of the features.
'activity_labels.txt': Matches the activity names to their labels.
'train/X_train.txt': Training set.
'train/y_train.txt': Training labels.
'test/X_test.txt': Test set.
'test/y_test.txt': Test labels.


## Data Set Variables
### Generated fields

SubjectID (integer) - ID of subject performing the activity. Ranges from 1-30 (integer)

Activity (factor)- Activity the subject is performing. 6 possible values: WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING.

### Measurement variables
#### Only mean and std deviation variables of measured values are kept from original data. 


tBodyAcc-mean()-X (num)

tBodyAcc-mean()-Y (num)

tBodyAcc-mean()-Z (num)

tBodyAcc-std()-X (num)

tBodyAcc-std()-Y (num)

tBodyAcc-std()-Z (num)

tGravityAcc-mean()-X (num)

tGravityAcc-mean()-Y (num)

tGravityAcc-mean()-Z (num)

tGravityAcc-std()-X (num)

tGravityAcc-std()-Y (num)

tGravityAcc-std()-Z (num)

tBodyAccJerk-mean()-X (num)

tBodyAccJerk-mean()-Y (num)

tBodyAccJerk-mean()-Z (num)

tBodyAccJerk-std()-X (num)

tBodyAccJerk-std()-Y (num)

tBodyAccJerk-std()-Z (num)

tBodyGyro-mean()-X (num)

tBodyGyro-mean()-Y (num)

tBodyGyro-mean()-Z (num)

tBodyGyro-std()-X (num)

tBodyGyro-std()-Y (num)

tBodyGyro-std()-Z (num)

tBodyGyroJerk-mean()-X (num)

tBodyGyroJerk-mean()-Y (num)

tBodyGyroJerk-mean()-Z (num)

tBodyGyroJerk-std()-X (num)

tBodyGyroJerk-std()-Y (num)

tBodyGyroJerk-std()-Z (num)

tBodyAccMag-mean() (num)

tBodyAccMag-std() (num)

tGravityAccMag-mean() (num)

tGravityAccMag-std() (num)

tBodyAccJerkMag-mean() (num)

tBodyAccJerkMag-std() (num)

tBodyGyroMag-mean() (num)

tBodyGyroMag-std() (num)

tBodyGyroJerkMag-mean() (num)

tBodyGyroJerkMag-std() (num)

fBodyAcc-mean()-X (num)

fBodyAcc-mean()-Y (num)

fBodyAcc-mean()-Z (num)

fBodyAcc-std()-X (num)

fBodyAcc-std()-Y (num)

fBodyAcc-std()-Z (num)

fBodyAccJerk-mean()-X (num)

fBodyAccJerk-mean()-Y (num)

fBodyAccJerk-mean()-Z (num)

fBodyAccJerk-std()-X (num)

fBodyAccJerk-std()-Y (num)

fBodyAccJerk-std()-Z (num)

fBodyGyro-mean()-X (num)

fBodyGyro-mean()-Y (num)

fBodyGyro-mean()-Z (num)

fBodyGyro-std()-X (num)

fBodyGyro-std()-Y (num)

fBodyGyro-std()-Z (num)

fBodyAccMag-mean() (num)

fBodyAccMag-std() (num)

fBodyBodyAccJerkMag-mean() (num)

fBodyBodyAccJerkMag-std() (num)

fBodyBodyGyroMag-mean() (num)

fBodyBodyGyroMag-std() (num)

fBodyBodyGyroJerkMag-mean() (num)

fBodyBodyGyroJerkMag-std() (num)
