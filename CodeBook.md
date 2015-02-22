**CodeBook**
==========

Introduction
==============

This codebook contains a comprehensive description of the variables in 
the Tidy Dataset created:

**Contents of the `Tidy_Data.txt` file: 180 observations of 68 variables**

Variables and Their Description:
=====================================

- `row.names` column contains the row names, this is not in order.
- `Subjects` column specifies the subject numbers. There are 30 subjects
and each is specified by Numbers 1 through 30.
- `ActivityID` column contains the following five variables each describing an activity:
1. WALKING
2. WALKING_UPSTAIRS
3. WALKING_DOWNSTAIRS
4. SITTING
5. STANDING
6. LAYING
- There are 66 more variables represented by 66 more columns.
- Each of the observation for these variables represents the means in each row for the stated variable column, the specified subject, and the specified activity.
- There are 180 observations in each column
- The observations are recorded through two different sensors: *accelerometer* and *gyroscope* of Samsung Galaxy S II smartphone, which the subjects wore on their waists

- The means and standard deviations are of:
1. Triaxial acceleration from the accelerometer (total acceleration) and the estimated body acceleration.
2. Triaxial Angular velocity from the gyroscope.
- A list of all variable names appearing in the `Tidy_Data.txt` file are given below in their respective order:
 
 [1] "Time BodyAcc-mean()-X"                           
 [2] "Time BodyAcc-mean()-Y"                           
 [3] "Time BodyAcc-mean()-Z"                           
 [4] "Time BodyAcc-std()-X"                            
 [5] "Time BodyAcc-std()-Y"                            
 [6] "Time BodyAcc-std()-Z"                            
 [7] "Time GravityAcc-mean()-X"                        
 [8] "Time GravityAcc-mean()-Y"                        
 [9] "Time GravityAcc-mean()-Z"                        
[10] "Time GravityAcc-std()-X"                         
[11] "Time GravityAcc-std()-Y"                         
[12] "Time GravityAcc-std()-Z"                         
[13] "Time BodyAccJerk-mean()-X"                       
[14] "Time BodyAccJerk-mean()-Y"                       
[15] "Time BodyAccJerk-mean()-Z"                       
[16] "Time BodyAccJerk-std()-X"                        
[17] "Time BodyAccJerk-std()-Y"                        
[18] "Time BodyAccJerk-std()-Z"                        
[19] "Time Body Gyroscopic -mean()-X"                  
[20] "Time Body Gyroscopic -mean()-Y"                  
[21] "Time Body Gyroscopic -mean()-Z"                  
[22] "Time Body Gyroscopic -std()-X"                   
[23] "Time Body Gyroscopic -std()-Y"                   
[24] "Time Body Gyroscopic -std()-Z"                   
[25] "Time Body Gyroscopic Jerk-mean()-X"              
[26] "Time Body Gyroscopic Jerk-mean()-Y"              
[27] "Time Body Gyroscopic Jerk-mean()-Z"              
[28] "Time Body Gyroscopic Jerk-std()-X"               
[29] "Time Body Gyroscopic Jerk-std()-Y"               
[30] "Time Body Gyroscopic Jerk-std()-Z"               
[31] "Time BodyAcc Magnitude-mean()"                   
[32] "Time BodyAcc Magnitude-std()"                    
[33] "Time GravityAcc Magnitude-mean()"                
[34] "Time GravityAcc Magnitude-std()"                 
[35] "Time BodyAccJerk Magnitude-mean()"               
[36] "Time BodyAccJerk Magnitude-std()"                
[37] "Time Body Gyroscopic  Magnitude-mean()"          
[38] "Time Body Gyroscopic  Magnitude-std()"           
[39] "Time Body Gyroscopic Jerk Magnitude-mean()"      
[40] "Time Body Gyroscopic Jerk Magnitude-std()"       
[41] "Frequency BodyAcc-mean()-X"                      
[42] "Frequency BodyAcc-mean()-Y"                      
[43] "Frequency BodyAcc-mean()-Z"                      
[44] "Frequency BodyAcc-std()-X"                       
[45] "Frequency BodyAcc-std()-Y"                       
[46] "Frequency BodyAcc-std()-Z"                       
[47] "Frequency BodyAccJerk-mean()-X"                  
[48] "Frequency BodyAccJerk-mean()-Y"                  
[49] "Frequency BodyAccJerk-mean()-Z"                  
[50] "Frequency BodyAccJerk-std()-X"                   
[51] "Frequency BodyAccJerk-std()-Y"                   
[52] "Frequency BodyAccJerk-std()-Z"                   
[53] "Frequency Body Gyroscopic -mean()-X"             
[54] "Frequency Body Gyroscopic -mean()-Y"             
[55] "Frequency Body Gyroscopic -mean()-Z"             
[56] "Frequency Body Gyroscopic -std()-X"              
[57] "Frequency Body Gyroscopic -std()-Y"              
[58] "Frequency Body Gyroscopic -std()-Z"              
[59] "Frequency BodyAcc Magnitude-mean()"              
[60] "Frequency BodyAcc Magnitude-std()"               
[61] "Frequency Body AccJerk Magnitude-mean()"         
[62] "Frequency Body AccJerk Magnitude-std()"          
[63] "Frequency Body  Gyroscopic  Magnitude-mean()"    
[64] "Frequency Body  Gyroscopic  Magnitude-std()"     
[65] "Frequency Body  Gyroscopic Jerk Magnitude-mean()"

[66] "Frequency Body  Gyroscopic Jerk Magnitude-std()" 

