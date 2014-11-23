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
setwd('..')
activity_labels <- as.character(activity_table$V2)

# compose numeric vector of subject and activity values for combined test and training data. (10,299 x 1 vector)
all_subject_ids <- append(as.numeric(test_subject_ids$V1), as.numeric(train_subject_ids$V1))
all_activities <- append(as.numeric(test_activity_values$V1), as.numeric(train_activity_values$V1))

#convert numeric vectors to factor
all_subject_ids <- factor(all_subject_ids)
all_activities <- factor(all_activities, labels=activity_labels)


####### step 4 - label the data set with descriptive variable names
convertFeatureNames <- function(featureName) {
	featureName <- sub('Acc', 'Accelerometer', featureName)
	featureName <- sub('Mag', 'Magnitude', featureName)
	featureName <- sub('Gyro', 'Gyroscope', featureName)
	featureName <- sub('-mean\\(\\)', 'Mean', featureName)
	featureName <- sub('-std\\(\\)', 'StandardDeviation', featureName)
	featureName <- sub('-meanFreq\\(\\)', 'WeightedAverageOfFrequencyComponentsToObtainMeanFrequency', featureName)
	featureName <- sub('-X', 'OnXAxis', featureName)
	featureName <- sub('-Y', 'OnYAxis', featureName)
	featureName <- sub('-Z', 'OnZAxis', featureName)
	featureName <- sub('^t', 'TimeDomainSignal', featureName)
	featureName <- sub('^f', 'FrequencyDomainSignal', featureName)

	if (length(grep('angle', featureName))) {
		featureName <- sub('angle\\(', 'AngleBetween', featureName)
		featureName <- sub('gravity', 'Gravity', featureName)
		featureName <- sub('\\,', 'And', featureName)
		featureName <- sub('\\)', '', featureName)
		featureName <- sub('\\)', '', featureName) # run twice for double hits
		featureName <- paste('Average',featureName,sep='')
	} else {
		featureName <- paste(featureName, 'Average', sep='')
	}
	featureName
}

filteredFeatureNames <- completeFeatureNames[filteredFeaturesColumnIndices]
filteredFeatureNames <- as.character(lapply(filteredFeatureNames, convertFeatureNames))
names(filteredData) <- filteredFeatureNames

#add subject id and activity columns
filteredData$SubjectID <- all_subject_ids
filteredData$Activity <- all_activities

#convert to data table for faster processing
dt <- as.data.table(filteredData)

#calculate averages of all features grouped by subject, activity
averages <- dt[,lapply(.SD,mean),by=list(SubjectID,Activity)]

outputFile <- 'clean_data.txt'
write.table(averages, file=outputFile, row.names=FALSE, col.names=TRUE, sep=' ',quote=FALSE)



####### step 5 - create 2nd independant data set
