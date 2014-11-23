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
	7352 x 561 and 2947 x 561 matrices, respectively, with each row a unique observation of each of the 561 features. These two matrices can therefore be combined, rowwise, into a 10199 x 561 matrix.</p>
	<li>
		<h4>Extract the measurements on the mean and standard deviation for each measurement.</h4>
	</li>
	<p>This step consists of searching the complete list of feature names for anything including 'mean' or 'std'. We then filter our merged data set to only include those selected features. This filters the list of features down to 86, from 561. It includes the various meanFreq() features.</p>
	<p>After filtering, we now have a 10299 x 86 matrix, with 10,299 measures of each of the 86 filtered features.</p>
	<li><h4>Use descriptive activity names to name activities in data set.</h4></li>
	<p>Because the activities are speficied by id (1-6), we apply the activity labels (read from file in step 1) as labels to the `all_activities` factor. Later on, we will append this factor (as well as the subject\_id factor, to the merged test/training data set.</p>
	<li><h4>Label data set with descriptive variable names.</h4></li>
	<p>The feature list from the raw data set uses a number of abbreviations. In order to better 'tidy' our data set, we run the list of filtered feature names through the convertFeatureNames() function (defined at start of step 4 in script), which expands the abbreviations into a more easily readable form.</p>
	<li><h4>From the data set in step 4, create a 2nd, independent tidy data set with average of each variable for each activity and each subject.</h4></li>
	<p>We append the subject and activity factors to our merged data set. We then convert the data set (currently a data frame) to a data table for faster processing, and calculate the average of each feature grouped by volunteer (subject\_id) and activity. Finally we output the results to 'clean_data.txt'
