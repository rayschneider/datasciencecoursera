## Step 1: Merges the training and the test sets to create one data set.

## Setup directory.  Since the data unzips into "UCI HAR Dataset", we will
##      use that as our highest level.

directory <- "C:/Users/Ray/coursera/dataspec/03_getting_and_cleaning_data/project2"
if (file.exists(directory)){
        setwd(file.path(directory))
} else {
        dir.create(file.path(directory))
        setwd(file.path(directory))
}

## Load dplyr library
library(dplyr)
library(data.table)

## Get data
path <- getwd()
path
url <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
f <- "Dataset.zip"
download.file(url, file.path(path, f))
unzip(f)

## Read in the data
testData <- read.table("./UCI HAR Dataset/test/X_test.txt")
testSubj <- read.table("./UCI HAR Dataset/test/subject_test.txt")
testLabel <- read.table("./UCI HAR Dataset/test/y_test.txt")
testBind1 <- cbind(testLabel, testData, deparse.level = 0) ## Bind label then data
testBind2 <- cbind(testSubj,testBind1, deparse.level = 0) ## Subj,Lab,Data
colnames(testBind2)[1] <- "Subject"
colnames(testBind2)[2] <- "Activity"

trainData <- read.table("./UCI HAR Dataset/train/X_train.txt") ## train data
trainSubj <- read.table("./UCI HAR Dataset/train/subject_train.txt")  ## train subject assignment
trainLabel <- read.table("./UCI HAR Dataset/train/y_train.txt") ## train labels
trainBind1 <- cbind(trainLabel, trainData, deparse.level = 0) ## Bind label then data
trainBind2 <- cbind(trainSubj,trainBind1, deparse.level = 0) ## Subj,Lab,Data
colnames(trainBind2)[1] <- "Subject"
colnames(trainBind2)[2] <- "Activity"

## Created merged data
mergedData <- rbind(testBind2,trainBind2)
reorderR <- arrange(mergedData, Subject, Activity)        

## Step 2: Extracts only the measurements on the mean and standard deviation 
##         for each measurement.

##      Input desired meaures if you want something else.  The defaults ensure
##      you get the subject, activity, and all columns with "mean" or "std".  
##      You could also try: c("Subject","Activity","min","max")

## default values
measures = c("Subject","Activity","[mM]ean","std")
## Get names and set col names in reorderR
featureNames <<- read.table("./UCI HAR Dataset/features.txt", stringsAsFactors = FALSE) ## get Feature names
namesList <- featureNames[,2]
colnames(reorderR)[3:563] <- namesList
## Create name vector to get columns, export both.
v.names <- measures
meanStd <- reorderR[,grepl(paste0(v.names,collapse="|"),colnames(reorderR))]

## Step 3: Uses descriptive activity names to name the activities in the data set.

act <- read.table("./UCI HAR Dataset/activity_labels.txt", stringsAsFactors = FALSE)
colnames(act) <- c("Activity","ActivityName")
actMerged <- merge(meanStd, act, by="Activity", all.x = TRUE)
actMerged$Activity <- actMerged$ActivityName 
actMerged$ActivityName <- NULL ## Drop activity name
clength <- as.numeric(dim(actMerged)[2])
actMerged <- actMerged[,c(2,1,3:clength)]

## Step 4: Appropriately labels the data set with descriptive variable names.

## Get rid of the symbols
names(actMerged) <- gsub("-","",names(actMerged))
names(actMerged) <- gsub("\\(","",names(actMerged))
names(actMerged) <- gsub("\\)","",names(actMerged))
names(actMerged) <- gsub(",","",names(actMerged))

## Expand the names for abbreviations
names(actMerged) <- gsub("^t","time",names(actMerged))
names(actMerged) <- gsub("^f","frequency",names(actMerged))
names(actMerged) <- gsub("mean","Mean",names(actMerged))
names(actMerged) <- gsub("std","StandDev",names(actMerged))
names(actMerged) <- gsub("Freq","Frequency",names(actMerged))
names(actMerged) <- gsub("Acc","Accelerometer",names(actMerged))
names(actMerged) <- gsub("^anglet","angleTime",names(actMerged))
names(actMerged) <- gsub("grvaity","Gravity",names(actMerged))

## Step 5: From the data set in step 4, creates a second, independent tidy 
##         data set with the average of each variable for each activity and each 
##         subject.

## set up labels to melt data
id_labels <- c("Subject","Activity")
data_labels <-setdiff(colnames(actMerged),id_labels)
melt_data <- melt(actMerged, id = id_labels, measure.vars = data_labels)

## Use dcast and mean function, write data
tidy_data <- dcast(melt_data, Subject + Activity ~ variable,mean)
write.table(tidy_data, file = "./tidyData.txt")
