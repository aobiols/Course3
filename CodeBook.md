# Getting and Cleaning Data Assignment Code Book

This code book contains the description of the resulting variables, the original data, and the transformations performed to clean up the original data 



**Resulting Variables**


Person:     Is a number from 1-30 indicating the original subject

Activity:   Indicate the activity that was mesaures, It can take on of the following values:

		  WALKING_UPSTAIRS
	
		  WALKING_DOWNSTAIRS

		  SITTING

		  STANDING

		  LAYING



Next 79 variables are the averages features measurements for every person and every activity


tBodyAcc-mean()-X

tBodyAcc-mean()-Y              

tBodyAcc-mean()-Z



tGravityAcc-mean()-X

tGravityAcc-mean()-Y

tGravityAcc-mean()-Z           


tBodyAccJerk-mean()-X

tBodyAccJerk-mean()-Y

tBodyAccJerk-mean()-Z

tBodyGyro-mean()-X             

tBodyGyro-mean()-Y

tBodyGyro-mean()-Z

tBodyGyroJerk-mean()-X

tBodyGyroJerk-mean()-Y

tBodyGyroJerk-mean()-Z

tBodyAccMag-mean()

tGravityAccMag-mean()

tBodyAccJerkMag-mean()

tBodyGyroMag-mean()

tBodyGyroJerkMag-mean()

fBodyAcc-mean()-X

fBodyAcc-mean()-Y

fBodyAcc-mean()-Z

fBodyAcc-meanFreq()-X

fBodyAcc-meanFreq()-Y

fBodyAcc-meanFreq()-Z

fBodyAccJerk-mean()-X

fBodyAccJerk-mean()-Y

fBodyAccJerk-mean()-Z

fBodyAccJerk-meanFreq()-X

fBodyAccJerk-meanFreq()-Y

fBodyAccJerk-meanFreq()-Z

fBodyGyro-mean()-X

fBodyGyro-mean()-Y

fBodyGyro-mean()-Z

fBodyGyro-meanFreq()-X

fBodyGyro-meanFreq()-Y

fBodyGyro-meanFreq()-Z
         
fBodyAccMag-mean()

fBodyAccMag-meanFreq()

fBodyBodyAccJerkMag-mean()

fBodyBodyAccJerkMag-meanFreq()

fBodyBodyGyroMag-mean()

fBodyBodyGyroMag-meanFreq()

fBodyBodyGyroJerkMag-mean()

fBodyBodyGyroJerkMag-meanFreq()

tBodyAcc-std()-X

tBodyAcc-std()-Y

tBodyAcc-std()-Z

tGravityAcc-std()-X

tGravityAcc-std()-Y

tGravityAcc-std()-Z

tBodyAccJerk-std()-X

tBodyAccJerk-std()-Y

tBodyAccJerk-std()-Z


tBodyGyro-std()-X

tBodyGyro-std()-Y

tBodyGyro-std()-Z


tBodyGyroJerk-std()-X

tBodyGyroJerk-std()-Y

tBodyGyroJerk-std()-Z


tBodyAccMag-std()

tGravityAccMag-std()

tBodyAccJerkMag-std()

tBodyGyroMag-std()

tBodyGyroJerkMag-std()


fBodyAcc-std()-X

fBodyAcc-std()-Y

fBodyAcc-std()-Z


fBodyAccJerk-std()-X

fBodyAccJerk-std()-Y

fBodyAccJerk-std()-Z


fBodyGyro-std()-X

fBodyGyro-std()-Y

fBodyGyro-std()-Z


fBodyAccMag-std()

fBodyBodyAccJerkMag-std()

fBodyBodyGyroMag-std()

fBodyBodyGyroJerkMag-std()



The original data had 561 features, with a training and test data set, divided in 3 files, 
we merged the two data sets,  we extracted only the measurements on the mean and standard deviation
and set a descriptive name for the activities  and we used descriptive variable names.
Finally we created a data set with the average of each variable for each activity and each subject as described above.







