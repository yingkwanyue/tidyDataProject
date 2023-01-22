# John Hopkins Getting and Cleaning Data Course Project

## Project Background

One of the most exciting areas in all of data science right now is wearable computing - see for example this article . Companies like Fitbit, Nike, and Jawbone Up are racing to develop the most advanced algorithms to attract new users. The data linked to from the course website represent data collected from the accelerometers from the Samsung Galaxy S smartphone. A full description is available at the site where the data was obtained:

http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones 

Here are the data for the project:

https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

## Goal of Project

The purpose of this project is to demonstrate your ability to collect, work with, and clean a data set. The goal is to prepare tidy data that can be used for later analysis.

## This repository contains 4 files:
- R Script used to clean and generate tidy dataset (tidy_data_set.txt)
- Cleaned dataset "tidy_data_set.txt"
- Codebook for tidy_data_set
- README file explaining the content in the repository

## How the R Script works
The R Script assumes that the working directory of R contains the following data files from the original data set:
- X_test.txt
- y_test.txt
- subject_test.txt
- X_train.txt
- y_train.txt
- subject_train.txt

Running the script will merge the data files and clean the data set such that an independent tidy data set with the average of each variable for each activity and each subject is created (tidy_data_set.txt).
