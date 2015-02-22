## Start with downloading the file. Using a Windows 8.1 64-bit OS.

fileurl <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
download.file(fileurl, "Dataset.zip")

## The above command is usually enough for windows OS, Mac/linux users should 
## add: method = "curl"
## The dataset is about 59.7 Mb in size

## File downloaded. Unzip it...

unzip(zipfile = "Dataset.zip")

## A folder named "UCI HAR Dataset" has appeared in the working directory
## all text files are in this folder. 

## Attempting to read the train and test files. Setting filepath...

filepath <- file.path("UCI HAR Dataset")
listfiles <- list.files(filepath, recursive = T, include.dirs = T)
listfiles

## All files with directories are shown...
## Now proceeding with reading the train and test files...
## Will ignore the 'Inertial Signals' sub-folders in both folders. 

xtsdata <- read.table(file.path(filepath, "test", "X_test.txt"))
ytsdata <- read.table(file.path(filepath, "test", "Y_test.txt"))
subtsdata <- read.table(file.path(filepath, "test", "subject_test.txt"))

## Read all relevant data in test folder

xtrdata <- read.table(file.path(filepath, "train", "X_train.txt"))
ytrdata <- read.table(file.path(filepath, "train", "Y_train.txt"))
subtrdata <- read.table(file.path(filepath, "train", "subject_train.txt"))

## Read all relevant data in train folder

features <- read.table(file.path(filepath, "features.txt"))
act_labels <- read.table(file.path(filepath, "activity_labels.txt"), header = F)

## Read files containing feature and activity names

## Now proceeding with merging files...

xData <- rbind(xtrdata, xtsdata)
yData <- rbind(ytrdata, ytsdata)
subdata <- rbind(subtrdata, subtsdata)

## rbinding of data complete

names(xData) <- features$V2
names(yData) <- c("ActivityID")
names(subdata) <- c("Subjects")

## Variables are correctly named

cdata <- cbind(subdata, yData)
Data_Set <- cbind(xData, cdata)

## A singular dataset merging training and testing data is created above

## Proceeding to extract the mean and standard deviation data (point 2)

meansd <- features$V2[grep("mean\\(\\)|std\\(\\)", features$V2)]

## Subsetting the appropriate columns...

names <- c(as.character(meansd), "Subjects", "ActivityID")
Data_Set <- subset(Data_Set, select = names)

## Proceeding to name the activities in the dataset...

Data_Set$ActivityID <- as.character(Data_Set$ActivityID)
Data_Set$ActivityID[Data_Set$ActivityID == 1] <- "WALKING"
Data_Set$ActivityID[Data_Set$ActivityID == 2] <- "WALKING_UPSTAIRS"
Data_Set$ActivityID[Data_Set$ActivityID == 3] <- "WALKING_DOWNSTAIRS"
Data_Set$ActivityID[Data_Set$ActivityID == 4] <- "SITTING"
Data_Set$ActivityID[Data_Set$ActivityID == 5] <- "STANDING"
Data_Set$ActivityID[Data_Set$ActivityID == 6] <- "LAYING"
Data_Set$ActivityID <- as.factor(Data_Set$ActivityID)
head(Data_Set$ActivityID, 40)

## Manually named the activities above for all levels
## Checked with the head function

## Proceeding to appropriately label the dataset with descriptive names
## Will use the names as follows...
## t = Time, Acc = Acceleration, Gyro = Gyroscopic, Mag = Magnitude, 
## f = Frequency, BodyBody = Body

names(Data_Set) <- gsub("^t", "Time ", names(Data_Set))
names(Data_Set) <- gsub("Acc", " Acceleration ", names(Data_Set))
names(Data_Set) <- gsub("Gyro", " Gyroscopic ", names(Data_Set))
names(Data_Set) <- gsub("Mag", " Magnitude", names(Data_Set))
names(Data_Set) <- gsub("^f", "Frequency ", names(Data_Set))
names(Data_Set) <- gsub("BodyBody", "Body ", names(Data_Set))

## Proceeding to create a tidy dataset...

library(plyr)
Tidy_Data <- aggregate(. ~Subjects + ActivityID, Data_Set, mean)
Tidy_Data <- Tidy_Data[order(Tidy_Data$Subjects, Tidy_Data$ActivityID), ]
write.table(Tidy_Data, file = "Tidy_Data.txt", row.name = F)

## Dataset created and new text file called Tidy_Data.txt created