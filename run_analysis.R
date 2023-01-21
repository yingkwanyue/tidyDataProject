## John Hopkins Getting and Cleaning Data
## Course Project

## Load packages
library(dplyr)
library(tidyr)

## Load data and bind subjects and activity labels to data sets
test_data <- read.table("X_test.txt", sep = "", header = FALSE)
train_data <- read.table("X_train.txt", sep = "", header = FALSE)
test_act_label <- read.table("y_test.txt", sep = "", header = FALSE)
train_act_label <- read.table("y_train.txt", sep = "", header = FALSE)
test_subject <- read.table("subject_test.txt", sep = "", header = FALSE)
train_subject <- read.table("subject_train.txt", sep = "", header = FALSE)
test_data <- cbind(test_subject, test_data, test_act_label)
train_data <- cbind(train_subject, train_data, train_act_label)

## 1. Merge the training and test data to create one data set
## Add header labels to data set
merged_data <- rbind(test_data, train_data)
header <- read.table("features.txt", sep = "", header = FALSE)
header <- rbind(c("", "Subject"), header, c("", "Activity"))
colnames(merged_data) <- header[, 2]

## 2. Extracts only the measurements on the mean and standard deviation
## for each measurement
mean_std <- grep("*mean()*|*std()*|Activity|Subject", header[, 2])
merged_data_meanstd <- merged_data[, mean_std]

## 3. Uses descriptive activity names to name the activities in the data set
merged_data_meanstd$Activity <- factor(merged_data_meanstd$Activity, levels = c(1, 2, 3, 4, 5, 6), labels = c("WALKING", "WALKING_UPSTAIRS", "WALKING_DOWNSTAIRS", "SITTING", "STANDING", "LAYING"))

## 4. Appropriately label the data set with descriptive variable names
header <- colnames(merged_data_meanstd)
header <- gsub("*tBodyAcc*", "time_body_acceleration", header)
header <- gsub("*tGravityAcc*", "time_gravity_acceleration", header)
header <- gsub("*tBodyGyro*", "time_body_angular_velocity", header)
header <- gsub("*fBody(.*)Acc*", "frequency_body_acceleration", header)
header <- gsub("*fGravityAcc*", "frequency_gravity_acceleration", header)
header <- gsub("*fBody(.*)Gyro*", "frequency_body_angular_velocity", header)
header <- gsub("*Mag*", "_magnitude", header)
header <- gsub("Jerk", "_jerk", header)
colnames(merged_data_meanstd) <- header

## 5. From data set in step 4, create a second, independent tidy data set with
## the average of each variable for each activity and each subject
header2 <- header[2:80]
summarized_data <- merged_data_meanstd %>%
        group_by(Subject, Activity) %>%
        summarize_at(header2, mean)
