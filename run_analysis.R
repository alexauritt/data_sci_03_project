####### step 1 - load and merge training and test data
setwd("./UCI\ HAR\ Dataset/test")
test_activity_values <- read.table("y_test.txt")
test_data <- read.table("X_test.txt")

setwd("../train")
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

# compose numeric vector of activity values for combined test and training data. (10,299 x 1 vector)
all_activities <- append(as.numeric(test_activity_values$V1), as.numeric(train_activity_values$V1))

#convert numeric vector to factor
all_activities <- factor(all_activities, labels=activity_labels)



####### step 4 - label the data set with descriptive variable names
filteredFeatureNames <- completeFeatureNames[filteredFeaturesColumnIndices]
names(filteredData) <- filteredFeatureNames

#add activitiy column
filteredData$activity <- all_activities

####### step 5 - create 2nd independant data set

