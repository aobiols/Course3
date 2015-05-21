##  ---------------------------------------------------------------------------
## Getting and Cleaning Data Course Project##  
## run_analysis.R  Script for the course Assignment
##  ----------------------------------------------------------------------------

# We check if deplyr package is intalled

if (!require("dplyr")){   
        install.packages("dplyr")
}
library("dplyr")

#  We check if we have the Dataset for the course project
#  If we do not have it we show and error and that's it,  otherwise we continue

if (!file.exists("UCI HAR Dataset"))	                                                      
        stop ("No UCI HAR Dataset directory found, please set your Working directory ")	        
                                                                                                

##  ----------------------------------------------------------------------------
##  STEP 1  :  Merges the training and the test sets to create one data set.
##  ----------------------------------------------------------------------------

test_x <- read.table("UCI HAR Dataset/test/X_test.txt")                 # we read the X_test file,  it has  2947 observ and 561 variables 
test_y <- read.table("UCI HAR Dataset/test/y_test.txt")			#  2947 observ 1 variable ,  from 1 to 6 these are the activity names codded
subject_test <- read.table("UCI HAR Dataset/test/subject_test.txt")	#  2947 observ 1 variable ,  this are the volunteers IDs


train_x <- read.table("UCI HAR Dataset/train/X_train.txt")              # 7352 obs. of  561 variable -->  we read the X_train file
train_y <- read.table("UCI HAR Dataset/train/Y_train.txt")              # 7352 obs. of  1 variable -->   we read the Y_train file
subject_train <- read.table("UCI HAR Dataset/train/subject_train.txt")  # 7352 obs. of  1 variable,  this are the volunteers IDs


test_and_train_x <- rbind(test_x,train_x)                     # we merge the 2 X data_sets
test_and_train_y <- rbind(test_y,train_y)                     # we merge the 2 Y data_sets
test_and_train_subject <- rbind(subject_test,subject_train)   # we merge the 2 subjects data_sets


##  ----------------------------------------------------------------------------
##  STEP 2  : 	Extracts only the measurements on the mean and standard deviation 
##              for each measurement
##  ----------------------------------------------------------------------------

features <- read.table("UCI HAR Dataset/features.txt")  # we read the features files
features <- features[,2] 				# we only want 2n column, with the 561 variables

# we look for the positions of the columns with the word "mean" or "std"
# and we make a subset with only those columns. We will have a subset with 79 variables

mean_std_columns <- c(grep("mean",features),grep("std",features))
mean_std_subset <- test_and_train_x[mean_std_columns]


##  ----------------------------------------------------------------------------
##  STEP 3  : 	Uses descriptive activity names to name the activities in the data set
##  ----------------------------------------------------------------------------

activity_labels <- read.table("UCI HAR Dataset/activity_labels.txt")  # we read the activity labels file
activities_with_labels <- merge(activity_labels,test_and_train_y)     # we merge by V1 activities ID with activities labels

#  We add a column to the mean and Std observations with the activity name, that is in the 2nd column
#  the result is a data frame with 80 variables

mean_std_subset_activity <- cbind(mean_std_subset,activities_with_labels[,2])


##  ----------------------------------------------------------------------------
##  STEP 4  : 	Appropriately labels the data set with descriptive variable names. 
##  ----------------------------------------------------------------------------

# we name the colnames with the features with "mean" and "std" as the ones we made the
# subset, plus the new column activity name
# we also name the variable subject we still did not used

colnames(mean_std_subset_activity) <- c(as.character(features[mean_std_columns]),"Activity")
colnames(test_and_train_subject) <- "Person"

##  ------------------------------------------------------------------------------------
##  STEP 5  : 	From the data set in step 4, creates a second, independent tidy data set 
## 		with the average of each variable for each activity and each subject.
##  ------------------------------------------------------------------------------------

# First we add the new variable subject to the data frame, now we have 81 variables

mean_std_subset_activity_subject <- cbind(mean_std_subset_activity,test_and_train_subject)

# We create a copy of the data set
tidy_data_set = mutate (mean_std_subset_activity_subject)

# we group by Person and activity and then we calculate the mean of every column

tidy_data_set <-  group_by(tidy_data_set,Person,Activity)
tidy_summary <-   summarise_each(tidy_data_set,funs(mean))   # Result of 35 rows x 81 variables

write.table(tidy_summary, file="ProjectResult.txt", row.names=FALSE)

print("Result variable")
print("tidy_summary: Data frame of 35 rows and 81 variables with the average of each variable for each activity and each Person")
print("We also wrote a ProjectResult.txt file")

