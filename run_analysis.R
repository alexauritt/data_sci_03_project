library('data.table')

####### step 1 - load and merge training and test data
setwd("./UCI\ HAR\ Dataset/test")
test_subject_ids <- read.table("subject_test.txt")
test_activity_values <- read.table("y_test.txt")
test_data <- read.table("X_test.txt")

setwd("../train")
train_subject_ids <- read.table("subject_train.txt")
train_activity_values <- read.table("y_train.txt")
train_data <- read.table("X_train.txt")

merged_data <- rbind(test_data, train_data)

setwd("..")



####### step 2 - extract on the measurements on mean and std

feature_list <- read.table("features.txt")
completeFeatureNames <- as.character(feature_list$V2)
filteredFeaturesColumnIndices <- grepl("[Mm]ean|[Ss]td", completeFeatureNames)


filteredData <- merged_data[,filteredFeaturesColumnIndices]


####### step 3 - use descriptive activity 

activity_table <- read.table("activity_labels.txt")
activity_labels <- as.character(activity_table$V2)

# compose numeric vector of subject and activity values for combined test and training data. (10,299 x 1 vector)
all_subject_ids <- append(as.numeric(test_subject_ids$V1), as.numeric(train_subject_ids$V1))
all_activities <- append(as.numeric(test_activity_values$V1), as.numeric(train_activity_values$V1))

#convert numeric vectors to factor
all_subject_ids <- factor(all_subject_ids)
all_activities <- factor(all_activities, labels=activity_labels)


####### step 4 - label the data set with descriptive variable names
filteredFeatureNames <- completeFeatureNames[filteredFeaturesColumnIndices]
names(filteredData) <- filteredFeatureNames

#add subject id and activity columns
filteredData$subject_ids <- all_subject_ids
filteredData$activity <- all_activities

#convert to data table for faster processing
dt <- as.data.table(filteredData)

#calculate averages of all features grouped by subject, activity
averages <- dt[,lapply(.SD,mean),by=list(subject_ids,activity)]


####### step 5 - create 2nd independant data set
