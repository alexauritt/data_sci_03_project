#README

The tidy data file (clean_data.txt) provides a 181x88 matrix, which includes a header row. The first two columns specify the volunteer's SubjectID and Activty (walking, running, etc.) for the remaining 86 columns, each of which measures the average value for the corresponding feature on the raw data set, for the given subject/activity combo.

The dataset can be easily read into R and viewed with the following commands:

```
data <- read.table("clean_data.txt", header=TRUE)
View(data)
```

##Raw Data Source

The raw data was obtained from:

<a>https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip</a>

and a full desription of the data can be found here:

<a>http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones</a>

A hard copy of the dataset, unzipped, is included in this repository, under the 'UCI HAR Dataset' directory.
