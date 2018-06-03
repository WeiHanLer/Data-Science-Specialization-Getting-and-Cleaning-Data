# Getting and cleaning data assignment

library(dplyr)
# Download and unzip files into working directory 

url <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
download.file(url, destfile = "./datacleaningweek4.zip")
unzip("./datacleaningweek4.zip")

# Read in the features and activity labels 
features <- read.table("./UCI HAR Dataset/features.txt")
activity <- read.table("./UCI HAR Dataset/activity_labels.txt")
colnames(activity) <- c("ActivityID", "Activity")

#  Read in the training set,activity labels and subject reference files
Training_set <- read.table("./UCI HAR Dataset/train/X_train.txt")
Training_ActivityLabels<- read.table("./UCI HAR Dataset/train/y_train.txt")
Training_subjects <- read.table ("./UCI HAR Dataset/train/subject_train.txt")

#  Read in the test set,activity labels and subject reference files
Test_set <- read.table("./UCI HAR Dataset/test/X_test.txt")
Test_Activitylabels <- read.table("./UCI HAR Dataset/test/y_test.txt")
Test_subjects <- read.table ("./UCI HAR Dataset/test/subject_test.txt")

# Merge the training and test data sets into one dataset.
MergeData <- rbind(Training_set, Test_set)

# Merge the activity and subject reference tables for the training and test sets into single reference tables.
MergeActivity <- rbind(Training_ActivityLabels, Test_Activitylabels)
MergeSubjects <- rbind(Training_subjects, Test_subjects)

# Rename the column variables in the merged dataset with the 'features' vector and give appropriate names to the columns in merged activity and subject dataset.   
colnames(MergeData) <- features[,2]
colnames(MergeActivity) <- "ActivityID"
colnames(MergeSubjects) <- "SubjectID"

# Add in columns to the merged data set so appropriate activity IDs and subject IDs are assigned to each row.
Mergedwithlabels <- cbind(MergeSubjects, MergeActivity, MergeData)

# Extract only the measurements relating to mean and standard deviation from the merged dataset.
SelectedColumns <- grepl("*mean\\(\\)|*std\\(\\)|ActivityID|SubjectID", names(Mergedwithlabels))
SelectedData <- Mergedwithlabels[ , SelectedColumns]

# Replace the actvity IDs with the descriptive names for the activity.
LabelledData <- merge(SelectedData, activity, by="ActivityID") 
LabelledData <- LabelledData[, c(2,ncol(LabelledData), 3:(ncol(LabelledData)-1))]

# Create a tidy data set where the average for each of the variables has been calculated for each activity and subject combination and shown on a single row.
TidyData <- aggregate(.~SubjectID+Activity, LabelledData, mean)
TidyData <- arrange(TidyData, SubjectID)

# Copy tidy data set to a text file for uploading into GitHub
write.table(TidyData, "TidyData.txt", row.names = FALSE, quote = FALSE)