# Librarys
library("data.table")
library("reshape2")

# Read activity_labels AND features
activity_labels <- read.table("UCI HAR Dataset/activity_labels.txt")
features <- read.table("UCI HAR Dataset/features.txt")[,2]


#Process test data
##Read files
testX <- read.table("UCI HAR Dataset/test/X_test.txt")
testY <- read.table("UCI HAR Dataset/test/y_test.txt")
testSubject <- read.table("UCI HAR Dataset/test/subject_test.txt")
##Assign names to test
names(testX) = features
# Only measurements with mean or standard deviation for each measurement.
testX = testX[,grepl("mean|std", names(testX))]

# Process activity labels
testY[,2] = activity_labels[testY[,1],2]
names(testY) = c("ActivityId", "Activity")
names(testSubject) = "subject"

#Data Finish Test
test <- cbind(as.data.table(testSubject), testY, testX)

#Process train data
##Read files
trainX <- read.table("UCI HAR Dataset/train/X_train.txt")
trainY <- read.table("UCI HAR Dataset/train/y_train.txt")
trainSubject <- read.table("UCI HAR Dataset/train/subject_train.txt")
##Assign names to test
names(trainX) = features
# Only measurements with mean or standard deviation for each measurement.
trainX = trainX[,grepl("mean|std", names(trainX))]

# Process activity labels
trainY[,2] = activity_labels[trainY[,1],2]
names(trainY) = c("ActivityId", "Activity")
names(trainSubject) = "subject"

#Data Finish Train
train <- cbind(as.data.table(trainSubject), trainY, trainX)


# Merge test and train 
dataEnd = rbind(test, train)

#Meltf of the datas
idLabels   = c("subject", "ActivityId", "Activity")
dataLabels = setdiff(colnames(dataEnd), idLabels)
meltData      = melt(dataEnd, id = idLabels, measure.vars = dataLabels)
tidy_data   = dcast(meltData, subject + Activity ~ variable, mean)

write.table(tidy_data, file = "tidy_data.txt", row.name=FALSE)
