####### step 1 - load and merge training and test data
setwd("./UCI\ HAR\ Dataset/test")
test_data <- read.table("X_test.txt")

setwd("../train")
train_data <- read.table("X_train.txt")

merged_data <- rbind(test_data, train_data)

setwd("..")



####### step 2 - extract on the measurements on mean and std

feature_list <- read.table("features.txt")
completeFeatureNames <- as.character(feature_list$V2)
filteredFeaturesColumnIndices <- grepl("[Mm]ean|[Ss]td", completeFeatureNames)


filteredData <- merged_data[,filteredFeaturesColumnIndices]


####### step 3 - use descriptive activity names
#to do

####### step 4 - label the data set with descriptive variable names
filteredFeatureNames <- completeFeatureNames[filteredFeaturesColumnIndices]
names(filteredData) <- filteredFeatureNames

####### step 5 - create 2nd independant data set

