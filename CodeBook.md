# Variables

data.csv contains 5 columns:

subjectid is the number assigned to each person in the study. There are 30 participants, assigned a number from 1-30.

activity is the type of activity the participant was doing during the measurement. There are 6 activities: "walking", "walking_upstairs", "walking_downstairs", "sitting", "standing", "laying".

measurement is the type of data that was measured. These include 3-axial signals from an accellerometer and gyroscope that were further processed to derive additional information. There are 46 measurements: "tBodyAccX", "fBodyBodyAccJerkMag", "fBodyAccX", "fBodyAccMag", "fBodyGyroFreqZ", "fBodyAccJerkY", "tBodyAccJerkMag", "fBodyAccJerkX", "fBodyAccFreqY", "fBodyGyroZ", "tGravityAccY", "fBodyGyroX", "fBodyBodyAccJerkMagFreq", "fBodyBodyGyroMag", "fBodyAccY", "tBodyGyroZ", "fBodyAccMagFreq", "fBodyAccJerkZ", "tBodyAccJerkZ", "fBodyBodyGyroJerkMagFreq" "fBodyBodyGyroJerkMag", "fBodyAccFreqZ", "tBodyAccMag", "tGravityAccZ", "fBodyGyroY", "tBodyGyroJerkX", "tBodyGyroJerkY", "fBodyAccJerkFreqX", "fBodyAccJerkFreqY", "tBodyGyroY", "tBodyGyroX", "fBodyGyroFreqY", "tBodyGyroJerkMag", "tBodyAccY", "tGravityAccMag", "tBodyAccJerkX", "tBodyAccJerkY", "tBodyGyroMag", "tGravityAccX", "tBodyGyroJerkZ"           "fBodyBodyGyroMagFreq", "fBodyAccJerkFreqZ", "fBodyAccFreqX", "fBodyGyroFreqX", "tBodyAccZ", "fBodyAccZ"

mean is the mean of the measurement data during the measurement duration. It is a numeric value

stdev is the standard deviation of the measurment during the measurement duration. It is a numeric value

tidy.csv contains 4 columns:

measurement is the type of data that was measured. These include 3-axial signals from an accellerometer and gyroscope that were further processed to derive additional information. There are 46 measurements: "tBodyAccX", "fBodyBodyAccJerkMag", "fBodyAccX", "fBodyAccMag", "fBodyGyroFreqZ", "fBodyAccJerkY", "tBodyAccJerkMag", "fBodyAccJerkX", "fBodyAccFreqY", "fBodyGyroZ", "tGravityAccY", "fBodyGyroX", "fBodyBodyAccJerkMagFreq", "fBodyBodyGyroMag", "fBodyAccY", "tBodyGyroZ", "fBodyAccMagFreq", "fBodyAccJerkZ", "tBodyAccJerkZ", "fBodyBodyGyroJerkMagFreq" "fBodyBodyGyroJerkMag", "fBodyAccFreqZ", "tBodyAccMag", "tGravityAccZ", "fBodyGyroY", "tBodyGyroJerkX", "tBodyGyroJerkY", "fBodyAccJerkFreqX", "fBodyAccJerkFreqY", "tBodyGyroY", "tBodyGyroX", "fBodyGyroFreqY", "tBodyGyroJerkMag", "tBodyAccY", "tGravityAccMag", "tBodyAccJerkX", "tBodyAccJerkY", "tBodyGyroMag", "tGravityAccX", "tBodyGyroJerkZ"           "fBodyBodyGyroMagFreq", "fBodyAccJerkFreqZ", "fBodyAccFreqX", "fBodyGyroFreqX", "tBodyAccZ", "fBodyAccZ"

activity is the type of activity the participant was doing during the measurement. There are 6 activities: "walking", "walking_upstairs", "walking_downstairs", "sitting", "standing", "laying".

subjectid is the number assigned to each person in the study. There are 30 participants, assigned a number from 1-30.

averages is the average of the "mean" column of data.csv grouped by the preceeding 3 columns (measurement, activity, subjectid). It is a numeric value