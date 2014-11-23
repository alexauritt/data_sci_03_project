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

##Cleaning Procedure

<ol>
	<li>
		Merge training and test sets to create one data set.
		
		Here is more info
	</li>
	##And more info here.
	<li>
		Extract the measurements on the mean and standard deviation for each measurement.
		
		And more still
	</li> 
	<li>Use descriptive activity names to name activities in data set.</li>
	<li>Label data set with descriptive variable names.</li>
	<li>From the data set in step 4, create a 2nd, independent tidy data set with average of each variable for each activity and each subject.</li>
