The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. These time domain signals (prefix 't' to denote time) were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 
Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag). 
Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. (Note the 'f' to indicate frequency domain signals). 
These signals were used to estimate variables of the feature vector for each pattern:  
'.XYZ' is used to denote 3 axial signals in the X, Y and Z directions.
 
[2] "tBodyAcc.mean.X" %unit is m/sec^2       
[3] "tBodyAcc.mean.Y"          
[4] "tBodyAcc.mean.Z"          
[5] "tGravityAcc.mean.X"       
[6] "tGravityAcc.mean.Y"       
[7] "tGravityAcc.mean.Z"       
[8] "tBodyAccJerk.mean.X"      
[9] "tBodyAccJerk.mean.Y"      
[10] "tBodyAccJerk.mean.Z"      
[11] "tBodyGyro.mean.X"         
[12] "tBodyGyro.mean.Y"         
[13] "tBodyGyro.mean.Z"         
[14] "tBodyGyroJerk.mean.X"     
[15] "tBodyGyroJerk.mean.Y"     
[16] "tBodyGyroJerk.mean.Z"     
[17] "tBodyAccMag.mean"         
[18] "tGravityAccMag.mean"      
[19] "tBodyAccJerkMag.mean"     
[20] "tBodyGyroMag.mean"        
[21] "tBodyGyroJerkMag.mean"    
[22] "fBodyAcc.mean.X"          
[23] "fBodyAcc.mean.Y"          
[24] "fBodyAcc.mean.Z"          
[25] "fBodyAccJerk.mean.X"      
[26] "fBodyAccJerk.mean.Y"      
[27] "fBodyAccJerk.mean.Z"      
[28] "fBodyGyro.mean.X"         
[29] "fBodyGyro.mean.Y"         
[30] "fBodyGyro.mean.Z"         
[31] "fBodyAccMag.mean"         
[32] "fBodyBodyAccJerkMag.mean" 
[33] "fBodyBodyGyroMag.mean"    
[34] "fBodyBodyGyroJerkMag.mean"
[35] "tBodyAcc.std.X"           
[36] "tBodyAcc.std.Y"           
[37] "tBodyAcc.std.Z"           
[38] "tGravityAcc.std.X"        
[39] "tGravityAcc.std.Y"        
[40] "tGravityAcc.std.Z"        
[41] "tBodyAccJerk.std.X"       
[42] "tBodyAccJerk.std.Y"       
[43] "tBodyAccJerk.std.Z"       
[44] "tBodyGyro.std.X"          
[45] "tBodyGyro.std.Y"          
[46] "tBodyGyro.std.Z"          
[47] "tBodyGyroJerk.std.X"      
[48] "tBodyGyroJerk.std.Y"      
[49] "tBodyGyroJerk.std.Z"      
[50] "tBodyAccMag.std"          
[51] "tGravityAccMag.std"       
[52] "tBodyAccJerkMag.std"      
[53] "tBodyGyroMag.std"         
[54] "tBodyGyroJerkMag.std"     
[55] "fBodyAcc.std.X"           
[56] "fBodyAcc.std.Y"           
[57] "fBodyAcc.std.Z"           
[58] "fBodyAccJerk.std.X"       
[59] "fBodyAccJerk.std.Y"       
[60] "fBodyAccJerk.std.Z"       
[61] "fBodyGyro.std.X"          
[62] "fBodyGyro.std.Y"          
[63] "fBodyGyro.std.Z"          
[64] "fBodyAccMag.std"          
[65] "fBodyBodyAccJerkMag.std"  
[66] "fBodyBodyGyroMag.std"     
[67] "fBodyBodyGyroJerkMag.std" 


Acitivity names:
WALKING

WALKING_UPSTAIRS

WALKING_DOWNSTAIRS

SITTING

STANDING

LAYING

