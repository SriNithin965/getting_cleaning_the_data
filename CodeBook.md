# GETTING AND CLEANING THE DATA PROJECT
Author: SRINITHIN
# ABOUT THE PROJECT
The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data. 

The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters and then sampled in fixed-width sliding windows of 2.56 sec and 50% overlap (128 readings/window). The sensor acceleration signal, which has gravitational and body motion components, was separated using a Butterworth low-pass filter into body acceleration and gravity. The gravitational force is assumed to have only low frequency components, therefore a filter with 0.3 Hz cutoff frequency was used. From each window, a vector of features was obtained by calculating variables from the time and frequency domain. See 'features_info.txt' for more details. 

For each record it is provided:
======================================

- Triaxial acceleration from the accelerometer (total acceleration) and the estimated body acceleration.
- Triaxial Angular velocity from the gyroscope. 
- A 561-feature vector with time and frequency domain variables. 
- Its activity label. 
- An identifier of the subject who carried out the experiment.

# ABOUT THE CODE
## see the code Run_analysis.R and readMe.md file you can clearly understand the process step to step.
# ABOUT THE VARIABLES
 [1] "subject"                     "label"                      
 [3] "tBodyAcc.mean...X"           "tBodyAcc.mean...Y"          
 [5] "tBodyAcc.mean...Z"           "tBodyAcc.std...X"           
 [7] "tBodyAcc.std...Y"            "tBodyAcc.std...Z"           
 [9] "tGravityAcc.mean...X"        "tGravityAcc.mean...Y"       
[11] "tGravityAcc.mean...Z"        "tGravityAcc.std...X"        
[13] "tGravityAcc.std...Y"         "tGravityAcc.std...Z"        
[15] "tBodyAccJerk.mean...X"       "tBodyAccJerk.mean...Y"      
[17] "tBodyAccJerk.mean...Z"       "tBodyAccJerk.std...X"       
[19] "tBodyAccJerk.std...Y"        "tBodyAccJerk.std...Z"       
[21] "tBodyGyro.mean...X"          "tBodyGyro.mean...Y"         
[23] "tBodyGyro.mean...Z"          "tBodyGyro.std...X"          
[25] "tBodyGyro.std...Y"           "tBodyGyro.std...Z"          
[27] "tBodyGyroJerk.mean...X"      "tBodyGyroJerk.mean...Y"     
[29] "tBodyGyroJerk.mean...Z"      "tBodyGyroJerk.std...X"      
[31] "tBodyGyroJerk.std...Y"       "tBodyGyroJerk.std...Z"      
[33] "tBodyAccMag.mean.."          "tBodyAccMag.std.."          
[35] "tGravityAccMag.mean.."       "tGravityAccMag.std.."       
[37] "tBodyAccJerkMag.mean.."      "tBodyAccJerkMag.std.."      
[39] "tBodyGyroMag.mean.."         "tBodyGyroMag.std.."         
[41] "tBodyGyroJerkMag.mean.."     "tBodyGyroJerkMag.std.."     
[43] "fBodyAcc.mean...X"           "fBodyAcc.mean...Y"          
[45] "fBodyAcc.mean...Z"           "fBodyAcc.std...X"           
[47] "fBodyAcc.std...Y"            "fBodyAcc.std...Z"           
[49] "fBodyAccJerk.mean...X"       "fBodyAccJerk.mean...Y"      
[51] "fBodyAccJerk.mean...Z"       "fBodyAccJerk.std...X"       
[53] "fBodyAccJerk.std...Y"        "fBodyAccJerk.std...Z"       
[55] "fBodyGyro.mean...X"          "fBodyGyro.mean...Y"         
[57] "fBodyGyro.mean...Z"          "fBodyGyro.std...X"          
[59] "fBodyGyro.std...Y"           "fBodyGyro.std...Z"          
[61] "fBodyAccMag.mean.."          "fBodyAccMag.std.."          
[63] "fBodyBodyAccJerkMag.mean.."  "fBodyBodyAccJerkMag.std.."  
[65] "fBodyBodyGyroMag.mean.."     "fBodyBodyGyroMag.std.."     
[67] "fBodyBodyGyroJerkMag.mean.." "fBodyBodyGyroJerkMag.std.." 
## IN this Label indicates the "Activities" that are carried out by the 30 volunteers - Type "Character"
## IN SUBJECT the volunteers are been indicated-Type "INteger"
## Remaining are the variables are come form the expirement done by using  embedded accelerometer and gyroscope.
