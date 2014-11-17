
setwd("./UCI\ HAR\ Dataset/test")

print("reading test data...")
test_data <- read.table("X_test.txt")
setwd("../train")

print("reading training data...")
train_data <- read.table("X_train.txt")

print("merging data")
merged_data <- rbind(test_data, train_data)

print(nrow(merged_data))