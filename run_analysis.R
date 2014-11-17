setwd("./UCI\ HAR\ Dataset/test")
test_data <- read.table("X_test.txt")

setwd("../train")
train_data <- read.table("X_train.txt")

merged_data <- rbind(test_data, train_data)

setwd("..")

feature_list <- read.table("features.txt")
filteredFeaturesColumnIndices <- grepl("[Mm]ean|[Ss]td", as.character(feature_list$V2))

filteredData <- merged_data[,filteredFeaturesColumnIndices]

