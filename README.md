# Getting and Cleaning Data Assignment

This repo contains the  code for performing the analysis descibed in the course Getting and Cleaning Data.
I am enjoying a lot with the 3 courses of the Data Science until now and I expect to complete the full specialization.

**This Repo contains:**

run_analysis.R  ->  The Script that performs the analysis for the course Assignment

CodeBook.md -> The code book describing the resulting variables, the original data, and the transformations performed to clean up the original data 

README.md -> This File


**Data to be analyzed**

The data linked to from the course website represent data collected from the accelerometers from the Samsung Galaxy S smartphone. A full description is available at the site where the data was obtained:

http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

Here are the data for the project:

https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip



**How to run the analysis**

1) Set your working directory at the parent directory of the "UCI HAR Dataset"

2) if you run it with RStudio, be sure you have installed "dplyr" package

3) Run the run_analysis.R script


**How the script works**

1) Merges the training and the test sets to create one data set.

2) Extracts only the measurements on the mean and standard deviation for each measurement. 

3) Uses descriptive activity names to name the activities in the data set

4) Appropriately labels the data set with descriptive variable names. 

5) From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.

The result is a file named ProjectResult.txt, that will be writtien at the working directory
and a variable named tidy_summary, that is a Data frame of 35 rows and 81 variables with the average of each variable for each activity and each Person"





