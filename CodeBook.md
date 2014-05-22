The original dataset are descriped here:
https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip 

We do the following things to get the clean_data:

 * Merges the training and the test sets to create one data set.
 * Extracts only the measurements on the mean and standard deviation for each measurement. 
 * Uses descriptive activity names to name the activities in the data set
 * Appropriately labels the data set with descriptive activity names. 
 * Creates a second, independent tidy data set with the average of each variable for each activity and each subject. 




features in clean_data.txt 
* "subject": 1-30, means the number of people who participant in this experiment
* "activity": record activity category for subject, has six levels:WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING

The features below means every mean for a movement feature for the subject and activity giving above

* "tBodyAcc_mean_X" 
* "tBodyAcc_mean_Y"
* "tBodyAcc_mean_Z"
* "tGravityAcc_mean_X"
* "tGravityAcc_mean_Y"
* "tGravityAcc_mean_Z"
* "tBodyAccJerk_mean_X"
* "tBodyAccJerk_mean_Y"
* "tBodyAccJerk_mean_Z"
* "tBodyGyro_mean_X"
* "tBodyGyro_mean_Y"
* "tBodyGyro_mean_Z"
* "tBodyGyroJerk_mean_X"
* "tBodyGyroJerk_mean_Y"
* "tBodyGyroJerk_mean_Z"
* "tBodyAccMag_mean"
* "tGravityAccMag_mean"
* "tBodyAccJerkMag_mean"
* "tBodyGyroMag_mean"
* "tBodyGyroJerkMag_mean"
* "fBodyAcc_mean_X"
* "fBodyAcc_mean_Y"
* "fBodyAcc_mean_Z"
* "fBodyAcc_meanFreq_X"
* "fBodyAcc_meanFreq_Y"
* "fBodyAcc_meanFreq_Z"
* "fBodyAccJerk_mean_X"
* "fBodyAccJerk_mean_Y"
* "fBodyAccJerk_mean_Z"
* "fBodyAccJerk_meanFreq_X"
* "fBodyAccJerk_meanFreq_Y"
* "fBodyAccJerk_meanFreq_Z"
* "fBodyGyro_mean_X"
* "fBodyGyro_mean_Y"
* "fBodyGyro_mean_Z"
* "fBodyGyro_meanFreq_X"
* "fBodyGyro_meanFreq_Y"
* "fBodyGyro_meanFreq_Z"
* "fBodyAccMag_mean"
* "fBodyAccMag_meanFreq"
* "fBodyBodyAccJerkMag_mean"
* "fBodyBodyAccJerkMag_meanFreq"
* "fBodyBodyGyroMag_mean"
* "fBodyBodyGyroMag_meanFreq"
* "fBodyBodyGyroJerkMag_mean"
* "fBodyBodyGyroJerkMag_meanFreq"
* "tBodyAcc_std_X"
* "tBodyAcc_std_Y"
* "tBodyAcc_std_Z"
* "tGravityAcc_std_X"
* "tGravityAcc_std_Y"
* "tGravityAcc_std_Z"
* "tBodyAccJerk_std_X"
* "tBodyAccJerk_std_Y"
* "tBodyAccJerk_std_Z"
* "tBodyGyro_std_X"
* "tBodyGyro_std_Y"
* "tBodyGyro_std_Z"
* "tBodyGyroJerk_std_X"
* "tBodyGyroJerk_std_Y"
* "tBodyGyroJerk_std_Z"
* "tBodyAccMag_std"
* "tGravityAccMag_std"
* "tBodyAccJerkMag_std"
* "tBodyGyroMag_std"
* "tBodyGyroJerkMag_std"
* "fBodyAcc_std_X"
* "fBodyAcc_std_Y"
* "fBodyAcc_std_Z"
* "fBodyAccJerk_std_X"
* "fBodyAccJerk_std_Y"
* "fBodyAccJerk_std_Z"
* "fBodyGyro_std_X"
* "fBodyGyro_std_Y"
* "fBodyGyro_std_Z"
* "fBodyAccMag_std"
* "fBodyBodyAccJerkMag_std"
* "fBodyBodyGyroMag_std"
* "fBodyBodyGyroJerkMag_std"
