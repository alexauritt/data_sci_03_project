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
		<h4>Merge training and test sets to create one data set.</h4>
	</li>
	<p>Script begins by reading in all necessary files, which include the feature data for training and test sets ('train/subject\_training' and 'test/subject\_test.txt'), as well as subject id lists (e.g. 'test/subject\_test.txt') and activity id lists (e.g. 'test/y\_test.txt'), as well as the list of activity labels ('activity\_labels.txt').</p>
	<p>Training and Test Data (without the subject and activity info) will be composed of 
	7252 x 561 and 2947 x 561 matrices, respectively, with each row a unique observation of each of the 561 features. These two matrices can therefore be combined, rowwise, into a 10199 x 561 matrix.</p>
	<li>
		<h4>Extract the measurements on the mean and standard deviation for each measurement.</h4>
	</li> 
	<li><h4>Use descriptive activity names to name activities in data set.</h4></li>
	<li>Label data set with descriptive variable names.</li>
	<li>From the data set in step 4, create a 2nd, independent tidy data set with average of each variable for each activity and each subject.</li>
