
## Coursera: Getting and Cleaning Data, Course Project

Raw data here: [https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip](https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip)

Raw data description: [http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones](http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones)


### run_analysis.R
The R script that takes the raw data and produces the final tidy dataset ([tidy-activity-avgs.txt](tidy-activity-avgs.txt)).
The script performs the following transforms on the raw data:

1. Merges the training and the test sets 
2. Extracts the estimated mean and standard deviation for each measurement. 
3. Converts activity IDs to descriptive activity names
4. Labels the column data with descriptive names. 
5. From the data set in step 4, creates an independent tidy data set with the average of each variable for each activity and each subject.

### tidy-activity-avgs.txt
The tidy dataset produced in step 5 above.  See [CodeBook.md](CodeBook.md) for a description of
the column data in this dataset.



