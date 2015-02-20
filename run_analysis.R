

# 1. Merges the training and the test sets to create one data set.
# 2. Extracts only the measurements on the mean and standard deviation for each measurement. 
# 3. Uses descriptive activity names to name the activities in the data set
# 4. Appropriately labels the data set with descriptive variable names. 
# 5. From the data set in step 4, creates a second, independent tidy data set with the average 
#    of each variable for each activity and each subject.


#--------------------------------------------------------------------------------------------------
# 1. Merges the training and the test sets to create one data set.

# Read in subject data, activity data, and measurement data, and combine them all
# into a single data frame.
test.sub <- read.csv("UCI HAR Dataset/test/subject_test.txt", header=F)
test.activity <- read.csv("UCI HAR Dataset/test/y_test.txt", header=F)
test.X <- read.table("UCI HAR Dataset/test/X_test.txt", header=F, sep="")

test.X$subject <- test.sub$V1
test.X$activity <- test.activity$V1

# Do the same for the training data.
train.sub <- read.csv("UCI HAR Dataset/train/subject_train.txt", header=F)
train.activity <- read.csv("UCI HAR Dataset/train/y_train.txt", header=F)
train.X <- read.table("UCI HAR Dataset/train/X_train.txt", header=F, sep="")

train.X$subject <- train.sub$V1
train.X$activity <- train.activity$V1

# Combine the training and test data.  There is no overlap in the data, so we can use rbind.
X.df <- rbind(train.X, test.X)


#--------------------------------------------------------------------------------------------------
# 2. Extracts only the measurements on the mean and standard deviation for each measurement. 

# Read the features list and find those labeled "mean()" and "std()"
features <- read.table("UCI HAR Dataset/features.txt", header=F, sep="")
features.mean <- subset(features, grepl("mean\\(\\)", V2))    
features.std <- subset(features, grepl("std\\(\\)", V2))    

# Create a vector of column indices that correspond to the featue mean() and std() measurements. 
# We'll use this vector to select the corresponding columns from the main dataset (X.df).
# Also create a vector of descriptive column names based on the feature names.
colIndices <- append( features.mean$V1, features.std$V1 )
colNames <- append(as.character(features.mean$V2), as.character(features.std$V2))

# (Note: 562:563 are the $subject and $activity cols, respectively
X.ms <- subset(X.df, select=append(colIndices, 562:563) )
names(X.ms) <- append(colNames, c("subject", "activity"))


#--------------------------------------------------------------------------------------------------
# 3. Uses descriptive activity names to name the activities in the data set

activities <- read.table("UCI HAR Dataset/activity_labels.txt", header=F, sep="")
X.ms$activity <- as.factor(X.ms$activity)
levels(X.ms$activity) <- activities$V2


#--------------------------------------------------------------------------------------------------
# 4. Appropriately labels the data set with descriptive variable names. 
#    Already done in #2.


#--------------------------------------------------------------------------------------------------
# 5. From the data set in step 4, creates a second, independent tidy data set with the average 
#    of each variable for each activity and each subject.
X.ms.avg <- aggregate(. ~ subject + activity, data=X.ms, mean)
write.table(X.ms.avg, file="tidy-activity-avgs.txt", row.names=F)

