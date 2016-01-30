Variables and Description of Variables
--------------------------------------

Each variable (not including Subject and Activity) for the range of variables [3] to [81] has a name comprised of terms that can be described individually, and those descriptions can be used to determine the nature of the variable.

The value for each observation is the mean of all such observations for a given subject/activity pair in the raw data sets.  Values range from -1 to 1.

Complete discussion of the original variables, units, and methods for creating the variables in the original data sets are included in the 'features_info.txt' file in the 'UCI HAR Dataset' folder generated when the 'run_analysis.R' script is run.

Variables [1], [2], and [82]-[88] are given individual descriptions.

Descriptors        | Meaning
-------------------|----------------------------------------------------------
time/frequency     | Indicates the variable is a time or frequency measurement
Body/Gravity       | Indicates the signal measured is either from the subjects' body or due to graviry
Accelerometer/Gyro | Indicates the measuring device, acceleromter or gyro
Jerk               | Indicates the measure is a "jerk" signal
Mag                | Magnitude of the signals calculated using the Euclidean norm
Mean/StandDev      | Indicates the measure is a means or standard deviation
X/Y/Z              | Indicates axis of measurement

As an example, variable [3], "timeBodyAccelerometerMeanX" is the mean of all mean time domain body accelerometer measures on the X axis for subject X during activity Y.

Variable [19] is the mean of all standard deviation of time domain body accelerometer jerk measures on the Y axis for subject X during activity Y. 

Col  | Variable Name                                     | Description
-----|---------------------------------------------------|------------
 [1] | Subject                                           | ID of the subject performing the given activity.  Range is 1-30.    
 [2] | Activity                                          | Name of activity measure.  Values are WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING     
 [3] | timeBodyAccelerometerMeanX                        |     
 [4] | timeBodyAccelerometerMeanY                        |    
 [5] | timeBodyAccelerometerMean                         |     
 [6] | timeBodyAccelerometerStandDevX                    |    
 [7] | timeBodyAccelerometerStandDevY                    |     
 [8] | timeBodyAccelerometerStandDevZ                    |     
 [9] | timeGravityAccelerometerMeanX                     |     
[10] | timeGravityAccelerometerMeanY                     |      
[11] | timeGravityAccelerometerMeanZ                     |      
[12] | timeGravityAccelerometerStandDevX                 |      
[13] | timeGravityAccelerometerStandDevY                 |      
[14] | timeGravityAccelerometerStandDevZ                 |      
[15] | timeBodyAccelerometerJerkMeanX                    |      
[16] | timeBodyAccelerometerJerkMeanY                    |      
[17] | timeBodyAccelerometerJerkMeanZ                    |      
[18] | timeBodyAccelerometerJerkStandDevX                |      
[19] | timeBodyAccelerometerJerkStandDevY                |      
[20] | timeBodyAccelerometerJerkStandDevZ                |      
[21] | timeBodyGyroMeanX                                 |      
[22] | timeBodyGyroMeanY                                 |     
[23] | timeBodyGyroMeanZ                                 |      
[24] | timeBodyGyroStandDevX                             |     
[25] | timeBodyGyroStandDevY                             |     
[26] | timeBodyGyroStandDevZ                             |     
[27] | timeBodyGyroJerkMeanX                             |      
[28] | timeBodyGyroJerkMeanY                             |      
[29] | timeBodyGyroJerkMeanZ                             |      
[30] | timeBodyGyroJerkStandDevX                         |      
[31] | timeBodyGyroJerkStandDevY                         |      
[32] | timeBodyGyroJerkStandDevZ                         |      
[33] | timeBodyAccelerometerMagMean                      |      
[34] | timeBodyAccelerometerMagStandDev                  |      
[35] | timeGravityAccelerometerMagMean                   |      
[36] | timeGravityAccelerometerMagStandDev               |      
[37] | timeBodyAccelerometerJerkMagMean                  |      
[38] | timeBodyAccelerometerJerkMagStandDev              |      
[39] | timeBodyGyroMagMean                               |      
[40] | timeBodyGyroMagStandDev                           |      
[41] | timeBodyGyroJerkMagMean                           |      
[42] | timeBodyGyroJerkMagStandDev                       |      
[43] | frequencyBodyAccelerometerMeanX                   |      
[44] | frequencyBodyAccelerometerMeanY                   |      
[45] | frequencyBodyAccelerometerMeanZ                   |      
[46] | frequencyBodyAccelerometerStandDevX               |      
[47] | frequencyBodyAccelerometerStandDevY               |      
[48] | frequencyBodyAccelerometerStandDevZ               |      
[49] | frequencyBodyAccelerometerMeanFrequencyX          |      
[50] | frequencyBodyAccelerometerMeanFrequencyY          |      
[51] | frequencyBodyAccelerometerMeanFrequencyZ          |      
[52] | frequencyBodyAccelerometerJerkMeanX               |      
[53] | frequencyBodyAccelerometerJerkMeanY               |      
[54] | frequencyBodyAccelerometerJerkMeanZ               |      
[55] | frequencyBodyAccelerometerJerkStandDevX           |      
[56] | frequencyBodyAccelerometerJerkStandDevY           |      
[57] | frequencyBodyAccelerometerJerkStandDevZ           |      
[58] | frequencyBodyAccelerometerJerkMeanFrequencyX      |      
[59] | frequencyBodyAccelerometerJerkMeanFrequencyY      |      
[60] | frequencyBodyAccelerometerJerkMeanFrequencyZ      |      
[61] | frequencyBodyGyroMeanX                            |      
[62] | frequencyBodyGyroMeanY                            |      
[63] | frequencyBodyGyroMeanZ                            |      
[64] | frequencyBodyGyroStandDevX                        |      
[65] | frequencyBodyGyroStandDevY                        |      
[66] | frequencyBodyGyroStandDevZ                        |      
[67] | frequencyBodyGyroMeanFrequencyX                   |      
[68] | frequencyBodyGyroMeanFrequencyY                   |      
[69] | frequencyBodyGyroMeanFrequencyZ                   |      
[70] | frequencyBodyAccelerometerMagMean                 |      
[71] | frequencyBodyAccelerometerMagStandDev             |      
[72] | frequencyBodyAccelerometerMagMeanFrequency        |      
[73] | frequencyBodyBodyAccelerometerJerkMagMean         |      
[74] | frequencyBodyBodyAccelerometerJerkMagStandDev     |     
[75] | frequencyBodyBodyAccelerometerJerkMagMeanFrequency|
[76] | frequencyBodyBodyGyroMagMean                      |
[77] | frequencyBodyBodyGyroMagStandDev                  |
[78] | frequencyBodyBodyGyroMagMeanFrequency             |
[79] | frequencyBodyBodyGyroJerkMagMean                  | 
[80] | frequencyBodyBodyGyroJerkMagStandDev              |
[81] | frequencyBodyBodyGyroJerkMagMeanFrequency         | 
[82] | angleTimeBodyAccelerometerMeanGravity             | Mean of angle between Gravity and Body time domain acceleromoter measures
[83] | angleTimeBodyAccelerometerJerkMeanGravityMean     | Mean of angle between Gravity and Body time domain acceleromoter jerk measures
[84] | angleTimeBodyGyroMeanGravityMean                  | Mean of angle between Gravity and Body time domain gyro measures
[85] | angleTimeBodyGyroJerkMeanGravityMean              | Mean of angle between Gravity and Body time domain gyro jerk measures
[86] | angleXGravityMean                                 | Mean of angle of gravity on specified axis
[87] | angleYGravityMean                                 | Mean of angle of gravity on specified axis
[88] | angleZGravityMean                                 | Mean of angle of gravity on specified axis





Datasaet Structure
------------------
'''r
str(dtTidy)
'''
'''
'data.frame':	180 obs. of  88 variables:
 $ Subject                                          : int  1 1 1 1 1 1 2 2 2 2 ...
 $ Activity                                         : chr  "LAYING" "SITTING" "STANDING" "WALKING" ...
 $ timeBodyAccelerometerMeanX                        : num  0.222 0.261 0.279 0.277 0.289 ...
 $ timeBodyAccelerometerMeanY                        : num  -0.04051 -0.00131 -0.01614 -0.01738 -0.00992 ...
 $ timeBodyAccelerometerMeanZ                        : num  -0.113 -0.105 -0.111 -0.111 -0.108 ...
 $ timeBodyAccelerometerStandDevX                    : num  -0.928 -0.977 -0.996 -0.284 0.03 ...
 $ timeBodyAccelerometerStandDevY                    : num  -0.8368 -0.9226 -0.9732 0.1145 -0.0319 ...
 $ timeBodyAccelerometerStandDevZ                    : num  -0.826 -0.94 -0.98 -0.26 -0.23 ...
 $ timeGravityAccelerometerMeanX                     : num  -0.249 0.832 0.943 0.935 0.932 ...
 $ timeGravityAccelerometerMeanY                     : num  0.706 0.204 -0.273 -0.282 -0.267 ...
 $ timeGravityAccelerometerMeanZ                     : num  0.4458 0.332 0.0135 -0.0681 -0.0621 ...
 $ timeGravityAccelerometerStandDevX                 : num  -0.897 -0.968 -0.994 -0.977 -0.951 ...
'''