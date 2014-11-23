#CodeBook

##Data

<p>The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, 3-axial linear acceleration and 3-axial angular velocity were captured at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually.</p>

<p>The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters and then sampled in fixed-width sliding windows of 2.56 sec and 50% overlap (128 readings/window). The sensor acceleration signal, which has gravitational and body motion components, was separated using a Butterworth low-pass filter into body acceleration and gravity. The gravitational force is assumed to have only low frequency components, therefore a filter with 0.3 Hz cutoff frequency was used. From each window, a vector of features was obtained by calculating variables from the time and frequency domain.</p>

<p>These features were then grouped by volunteer and activity, and a averaged was calculated for each group. Note that we only included features from the original data set which involved the mean or standard deviation of the relevant data.</p>

<p>The resultant tidy data set consists of a 180 x 88 matrix, where each row corresponds to a given observation of a single volunteer performing a single activity. The columns include the SubjectID (which identifies the volunteer), the Activity description, and then average of each of the 86 features.

##Columns

###SubjectID

Unit: Integer (between 1 and 30)

30 different volunteers were measured. Each volunteer was given a unique ID, between 1 and 30. This column identifies which volunteer that data points in this row apply towards

---

###Activity

Unit: Category. One of the following 6 activities was measured:

* STANDING
* SITTING
* WALKING
* WALKING_UPSTAIRS
* WALKING_DOWNSTAIRS
* LAYING

--- 

###TimeDomainSignalBodyAccelerometerMeanOnXAxisAverage

Unit: Decimal value normalized and bounded within [-1,1]

Average of all observations of corresponding feature for the given volunteer and for the specified activity.

---

###TimeDomainSignalBodyAccelerometerMeanOnYAxisAverage

Unit: Decimal value normalized and bounded within [-1,1]

Average of all observations of corresponding feature for the given volunteer and for the specified activity.

---

###TimeDomainSignalBodyAccelerometerMeanOnZAxisAverage	

Unit: Decimal value normalized and bounded within [-1,1]

Average of all observations of corresponding feature for the given volunteer and for the specified activity.

---

###TimeDomainSignalBodyAccelerometerStandardDeviationOnXAxisAverage

Unit: Decimal value normalized and bounded within [-1,1]

Average of all observations of corresponding feature for the given volunteer and for the specified activity.

---

###TimeDomainSignalBodyAccelerometerStandardDeviationOnYAxisAverage

Unit: Decimal value normalized and bounded within [-1,1]

Average of all observations of corresponding feature for the given volunteer and for the specified activity.

---

###TimeDomainSignalBodyAccelerometerStandardDeviationOnZAxisAverage

Unit: Decimal value normalized and bounded within [-1,1]

Average of all observations of corresponding feature for the given volunteer and for the specified activity.

---

###TimeDomainSignalGravityAccelerometerMeanOnXAxisAverage

Unit: Decimal value normalized and bounded within [-1,1]

Average of all observations of corresponding feature for the given volunteer and for the specified activity.

---

###TimeDomainSignalGravityAccelerometerMeanOnYAxisAverage

Unit: Decimal value normalized and bounded within [-1,1]

Average of all observations of corresponding feature for the given volunteer and for the specified activity.

---

###TimeDomainSignalGravityAccelerometerMeanOnZAxisAverage

Unit: Decimal value normalized and bounded within [-1,1]

Average of all observations of corresponding feature for the given volunteer and for the specified activity.

---

###TimeDomainSignalGravityAccelerometerStandardDeviationOnXAxisAverage

Unit: Decimal value normalized and bounded within [-1,1]

Average of all observations of corresponding feature for the given volunteer and for the specified activity.

---

###TimeDomainSignalGravityAccelerometerStandardDeviationOnYAxisAverage

Unit: Decimal value normalized and bounded within [-1,1]	Unit: Decimal value normalized and bounded within [-1,1]

Average of all observations of corresponding feature for the given volunteer and for the specified activity.

---

###TimeDomainSignalGravityAccelerometerStandardDeviationOnZAxisAverage

Unit: Decimal value normalized and bounded within [-1,1]

Average of all observations of corresponding feature for the given volunteer and for the specified activity.

---

###TimeDomainSignalBodyAccelerometerJerkMeanOnXAxisAverage

Unit: Decimal value normalized and bounded within [-1,1]

Average of all observations of corresponding feature for the given volunteer and for the specified activity.

---

###TimeDomainSignalBodyAccelerometerJerkMeanOnYAxisAverage

Unit: Decimal value normalized and bounded within [-1,1]

Average of all observations of corresponding feature for the given volunteer and for the specified activity.

---

###TimeDomainSignalBodyAccelerometerJerkMeanOnZAxisAverage

Unit: Decimal value normalized and bounded within [-1,1]

Average of all observations of corresponding feature for the given volunteer and for the specified activity.

---

###TimeDomainSignalBodyAccelerometerJerkStandardDeviationOnXAxisAverage

Unit: Decimal value normalized and bounded within [-1,1]

Average of all observations of corresponding feature for the given volunteer and for the specified activity.

---

###TimeDomainSignalBodyAccelerometerJerkStandardDeviationOnYAxisAverage

Unit: Decimal value normalized and bounded within [-1,1]

Average of all observations of corresponding feature for the given volunteer and for the specified activity.

---

###TimeDomainSignalBodyAccelerometerJerkStandardDeviationOnZAxisAverage

Unit: Decimal value normalized and bounded within [-1,1]

Average of all observations of corresponding feature for the given volunteer and for the specified activity.

---

###TimeDomainSignalBodyGyroscopeMeanOnXAxisAverage

Unit: Decimal value normalized and bounded within [-1,1]

Average of all observations of corresponding feature for the given volunteer and for the specified activity.

---

###TimeDomainSignalBodyGyroscopeMeanOnYAxisAverage

Unit: Decimal value normalized and bounded within [-1,1]

Average of all observations of corresponding feature for the given volunteer and for the specified activity.

---

###TimeDomainSignalBodyGyroscopeMeanOnZAxisAverage

Unit: Decimal value normalized and bounded within [-1,1]

Average of all observations of corresponding feature for the given volunteer and for the specified activity.

---

###TimeDomainSignalBodyGyroscopeStandardDeviationOnXAxisAverage

Unit: Decimal value normalized and bounded within [-1,1]

Average of all observations of corresponding feature for the given volunteer and for the specified activity.

---

###TimeDomainSignalBodyGyroscopeStandardDeviationOnYAxisAverage

Unit: Decimal value normalized and bounded within [-1,1]

Average of all observations of corresponding feature for the given volunteer and for the specified activity.

---

###TimeDomainSignalBodyGyroscopeStandardDeviationOnZAxisAverage

Unit: Decimal value normalized and bounded within [-1,1]

Average of all observations of corresponding feature for the given volunteer and for the specified activity.

---

###TimeDomainSignalBodyGyroscopeJerkMeanOnXAxisAverage

Unit: Decimal value normalized and bounded within [-1,1]

Average of all observations of corresponding feature for the given volunteer and for the specified activity.

---

###TimeDomainSignalBodyGyroscopeJerkMeanOnYAxisAverage

Unit: Decimal value normalized and bounded within [-1,1]

Average of all observations of corresponding feature for the given volunteer and for the specified activity.

---

###TimeDomainSignalBodyGyroscopeJerkMeanOnZAxisAverage

Unit: Decimal value normalized and bounded within [-1,1]

Average of all observations of corresponding feature for the given volunteer and for the specified activity.

---

###TimeDomainSignalBodyGyroscopeJerkStandardDeviationOnXAxisAverage

Unit: Decimal value normalized and bounded within [-1,1]

Average of all observations of corresponding feature for the given volunteer and for the specified activity.

---

###TimeDomainSignalBodyGyroscopeJerkStandardDeviationOnYAxisAverage

Unit: Decimal value normalized and bounded within [-1,1]

Average of all observations of corresponding feature for the given volunteer and for the specified activity.

---

###TimeDomainSignalBodyGyroscopeJerkStandardDeviationOnZAxisAverage

Unit: Decimal value normalized and bounded within [-1,1]

Average of all observations of corresponding feature for the given volunteer and for the specified activity.

---

###TimeDomainSignalBodyAccelerometerMagnitudeMeanAverage

Unit: Decimal value normalized and bounded within [-1,1]

Average of all observations of corresponding feature for the given volunteer and for the specified activity.

---

###TimeDomainSignalBodyAccelerometerMagnitudeStandardDeviationAverage

Unit: Decimal value normalized and bounded within [-1,1]

Average of all observations of corresponding feature for the given volunteer and for the specified activity.

---

###TimeDomainSignalGravityAccelerometerMagnitudeMeanAverage

Unit: Decimal value normalized and bounded within [-1,1]

Average of all observations of corresponding feature for the given volunteer and for the specified activity.

---

###TimeDomainSignalGravityAccelerometerMagnitudeStandardDeviationAverage

Unit: Decimal value normalized and bounded within [-1,1]

Average of all observations of corresponding feature for the given volunteer and for the specified activity.

---

###TimeDomainSignalBodyAccelerometerJerkMagnitudeMeanAverage

Unit: Decimal value normalized and bounded within [-1,1]

Average of all observations of corresponding feature for the given volunteer and for the specified activity.

---

###TimeDomainSignalBodyAccelerometerJerkMagnitudeStandardDeviationAverage

Unit: Decimal value normalized and bounded within [-1,1]

Average of all observations of corresponding feature for the given volunteer and for the specified activity.

---

###TimeDomainSignalBodyGyroscopeMagnitudeMeanAverage

Unit: Decimal value normalized and bounded within [-1,1]

Average of all observations of corresponding feature for the given volunteer and for the specified activity.

---

###TimeDomainSignalBodyGyroscopeMagnitudeStandardDeviationAverage

Unit: Decimal value normalized and bounded within [-1,1]

Average of all observations of corresponding feature for the given volunteer and for the specified activity.

---

###TimeDomainSignalBodyGyroscopeJerkMagnitudeMeanAverage

Unit: Decimal value normalized and bounded within [-1,1]

Average of all observations of corresponding feature for the given volunteer and for the specified activity.

---

###TimeDomainSignalBodyGyroscopeJerkMagnitudeStandardDeviationAverage

Unit: Decimal value normalized and bounded within [-1,1]

Average of all observations of corresponding feature for the given volunteer and for the specified activity.

---

###FrequencyDomainSignalBodyAccelerometerMeanOnXAxisAverage

Unit: Decimal value normalized and bounded within [-1,1]

Average of all observations of corresponding feature for the given volunteer and for the specified activity.

---

###FrequencyDomainSignalBodyAccelerometerMeanOnYAxisAverage

Unit: Decimal value normalized and bounded within [-1,1]

Average of all observations of corresponding feature for the given volunteer and for the specified activity.

---

###FrequencyDomainSignalBodyAccelerometerMeanOnZAxisAverage

Unit: Decimal value normalized and bounded within [-1,1]

Average of all observations of corresponding feature for the given volunteer and for the specified activity.

---

###FrequencyDomainSignalBodyAccelerometerStandardDeviationOnXAxisAverage

Unit: Decimal value normalized and bounded within [-1,1]

Average of all observations of corresponding feature for the given volunteer and for the specified activity.

---

###FrequencyDomainSignalBodyAccelerometerStandardDeviationOnYAxisAverage

Unit: Decimal value normalized and bounded within [-1,1]

Average of all observations of corresponding feature for the given volunteer and for the specified activity.

---

###FrequencyDomainSignalBodyAccelerometerStandardDeviationOnZAxisAverage

Unit: Decimal value normalized and bounded within [-1,1]

Average of all observations of corresponding feature for the given volunteer and for the specified activity.

---

###FrequencyDomainSignalBodyAccelerometerWeightedAverageOfFrequencyComponentsToObtainMeanFrequencyOnXAxisAverage

Unit: Decimal value normalized and bounded within [-1,1]

Average of all observations of corresponding feature for the given volunteer and for the specified activity.

---

###FrequencyDomainSignalBodyAccelerometerWeightedAverageOfFrequencyComponentsToObtainMeanFrequencyOnYAxisAverage

Unit: Decimal value normalized and bounded within [-1,1]

Average of all observations of corresponding feature for the given volunteer and for the specified activity.

---

###FrequencyDomainSignalBodyAccelerometerWeightedAverageOfFrequencyComponentsToObtainMeanFrequencyOnZAxisAverage

Unit: Decimal value normalized and bounded within [-1,1]

Average of all observations of corresponding feature for the given volunteer and for the specified activity.

---

###FrequencyDomainSignalBodyAccelerometerJerkMeanOnXAxisAverage

Unit: Decimal value normalized and bounded within [-1,1]

Average of all observations of corresponding feature for the given volunteer and for the specified activity.

---

###FrequencyDomainSignalBodyAccelerometerJerkMeanOnYAxisAverage

Unit: Decimal value normalized and bounded within [-1,1]

Average of all observations of corresponding feature for the given volunteer and for the specified activity.

---

###FrequencyDomainSignalBodyAccelerometerJerkMeanOnZAxisAverage

Unit: Decimal value normalized and bounded within [-1,1]

Average of all observations of corresponding feature for the given volunteer and for the specified activity.

---

###FrequencyDomainSignalBodyAccelerometerJerkStandardDeviationOnXAxisAverage

Unit: Decimal value normalized and bounded within [-1,1]

Average of all observations of corresponding feature for the given volunteer and for the specified activity.

---

###FrequencyDomainSignalBodyAccelerometerJerkStandardDeviationOnYAxisAverage

Unit: Decimal value normalized and bounded within [-1,1]

Average of all observations of corresponding feature for the given volunteer and for the specified activity.

---

###FrequencyDomainSignalBodyAccelerometerJerkStandardDeviationOnZAxisAverage

Unit: Decimal value normalized and bounded within [-1,1]

Average of all observations of corresponding feature for the given volunteer and for the specified activity.

---

###FrequencyDomainSignalBodyAccelerometerJerkWeightedAverageOfFrequencyComponentsToObtainMeanFrequencyOnXAxisAverage

Unit: Decimal value normalized and bounded within [-1,1]

Average of all observations of corresponding feature for the given volunteer and for the specified activity.

---

###FrequencyDomainSignalBodyAccelerometerJerkWeightedAverageOfFrequencyComponentsToObtainMeanFrequencyOnYAxisAverage

Unit: Decimal value normalized and bounded within [-1,1]

Average of all observations of corresponding feature for the given volunteer and for the specified activity.

---

###FrequencyDomainSignalBodyAccelerometerJerkWeightedAverageOfFrequencyComponentsToObtainMeanFrequencyOnZAxisAverage

Unit: Decimal value normalized and bounded within [-1,1]

Average of all observations of corresponding feature for the given volunteer and for the specified activity.

---

###FrequencyDomainSignalBodyGyroscopeMeanOnXAxisAverage

Unit: Decimal value normalized and bounded within [-1,1]

Average of all observations of corresponding feature for the given volunteer and for the specified activity.

---

###FrequencyDomainSignalBodyGyroscopeMeanOnYAxisAverage

Unit: Decimal value normalized and bounded within [-1,1]

Average of all observations of corresponding feature for the given volunteer and for the specified activity.

---

###FrequencyDomainSignalBodyGyroscopeMeanOnZAxisAverage

Unit: Decimal value normalized and bounded within [-1,1]

Average of all observations of corresponding feature for the given volunteer and for the specified activity.

---

###FrequencyDomainSignalBodyGyroscopeStandardDeviationOnXAxisAverage

Unit: Decimal value normalized and bounded within [-1,1]

Average of all observations of corresponding feature for the given volunteer and for the specified activity.

---

###FrequencyDomainSignalBodyGyroscopeStandardDeviationOnYAxisAverage

Unit: Decimal value normalized and bounded within [-1,1]

Average of all observations of corresponding feature for the given volunteer and for the specified activity.

---

###FrequencyDomainSignalBodyGyroscopeStandardDeviationOnZAxisAverage

Unit: Decimal value normalized and bounded within [-1,1]

Average of all observations of corresponding feature for the given volunteer and for the specified activity.

---

###FrequencyDomainSignalBodyGyroscopeWeightedAverageOfFrequencyComponentsToObtainMeanFrequencyOnXAxisAverage

Unit: Decimal value normalized and bounded within [-1,1]

Average of all observations of corresponding feature for the given volunteer and for the specified activity.

---

###FrequencyDomainSignalBodyGyroscopeWeightedAverageOfFrequencyComponentsToObtainMeanFrequencyOnYAxisAverage

Unit: Decimal value normalized and bounded within [-1,1]

Average of all observations of corresponding feature for the given volunteer and for the specified activity.

---

###FrequencyDomainSignalBodyGyroscopeWeightedAverageOfFrequencyComponentsToObtainMeanFrequencyOnZAxisAverage

Unit: Decimal value normalized and bounded within [-1,1]

Average of all observations of corresponding feature for the given volunteer and for the specified activity.

---

###FrequencyDomainSignalBodyAccelerometerMagnitudeMeanAverage

Unit: Decimal value normalized and bounded within [-1,1]

Average of all observations of corresponding feature for the given volunteer and for the specified activity.

---

###FrequencyDomainSignalBodyAccelerometerMagnitudeStandardDeviationAverage

Unit: Decimal value normalized and bounded within [-1,1]

Average of all observations of corresponding feature for the given volunteer and for the specified activity.

---

###FrequencyDomainSignalBodyAccelerometerMagnitudeWeightedAverageOfFrequencyComponentsToObtainMeanFrequencyAverage

Unit: Decimal value normalized and bounded within [-1,1]

Average of all observations of corresponding feature for the given volunteer and for the specified activity.

---

###FrequencyDomainSignalBodyBodyAccelerometerJerkMagnitudeMeanAverage

Unit: Decimal value normalized and bounded within [-1,1]

Average of all observations of corresponding feature for the given volunteer and for the specified activity.

---

###FrequencyDomainSignalBodyBodyAccelerometerJerkMagnitudeStandardDeviationAverage

Unit: Decimal value normalized and bounded within [-1,1]

Average of all observations of corresponding feature for the given volunteer and for the specified activity.

---

###FrequencyDomainSignalBodyBodyAccelerometerJerkMagnitudeWeightedAverageOfFrequencyComponentsToObtainMeanFrequencyAverage

Unit: Decimal value normalized and bounded within [-1,1]

Average of all observations of corresponding feature for the given volunteer and for the specified activity.

---

###FrequencyDomainSignalBodyBodyGyroscopeMagnitudeMeanAverage

Unit: Decimal value normalized and bounded within [-1,1]

Average of all observations of corresponding feature for the given volunteer and for the specified activity.

---

###FrequencyDomainSignalBodyBodyGyroscopeMagnitudeStandardDeviationAverage

Unit: Decimal value normalized and bounded within [-1,1]

Average of all observations of corresponding feature for the given volunteer and for the specified activity.

---

###FrequencyDomainSignalBodyBodyGyroscopeMagnitudeWeightedAverageOfFrequencyComponentsToObtainMeanFrequencyAverage

Unit: Decimal value normalized and bounded within [-1,1]

Average of all observations of corresponding feature for the given volunteer and for the specified activity.

---

###FrequencyDomainSignalBodyBodyGyroscopeJerkMagnitudeMeanAverage

Unit: Decimal value normalized and bounded within [-1,1]

Average of all observations of corresponding feature for the given volunteer and for the specified activity.

---

###FrequencyDomainSignalBodyBodyGyroscopeJerkMagnitudeStandardDeviationAverage

Unit: Decimal value normalized and bounded within [-1,1]

Average of all observations of corresponding feature for the given volunteer and for the specified activity.

---

###FrequencyDomainSignalBodyBodyGyroscopeJerkMagnitudeWeightedAverageOfFrequencyComponentsToObtainMeanFrequencyAverage

Unit: Decimal value normalized and bounded within [-1,1]

Average of all observations of corresponding feature for the given volunteer and for the specified activity.

---

###AverageAngleBetweentBodyAccelerometerMeanAndGravity

Unit: Decimal value normalized and bounded within [-1,1]

Average of all observations of corresponding feature for the given volunteer and for the specified activity.

---

###AverageAngleBetweentBodyAccelerometerJerkMeanAndGravityMean

Unit: Decimal value normalized and bounded within [-1,1]

Average of all observations of corresponding feature for the given volunteer and for the specified activity.

---

###AverageAngleBetweentBodyGyroscopeMeanAndGravityMean

Unit: Decimal value normalized and bounded within [-1,1]

Average of all observations of corresponding feature for the given volunteer and for the specified activity.

---

###AverageAngleBetweentBodyGyroscopeJerkMeanAndGravityMean

Unit: Decimal value normalized and bounded within [-1,1]

Average of all observations of corresponding feature for the given volunteer and for the specified activity.

---

###AverageAngleBetweenXAndGravityMean

Unit: Decimal value normalized and bounded within [-1,1]

Average of all observations of corresponding feature for the given volunteer and for the specified activity.

---

###AverageAngleBetweenYAndGravityMean

Unit: Decimal value normalized and bounded within [-1,1]

Average of all observations of corresponding feature for the given volunteer and for the specified activity.

---

###AverageAngleBetweenZAndGravityMean

Unit: Decimal value normalized and bounded within [-1,1]

Average of all observations of corresponding feature for the given volunteer and for the specified activity.

---
