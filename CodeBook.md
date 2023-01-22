# Code Book for tidy_data_set.csv

## Data Description
The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, 3-axial linear acceleration and 3-axial angular velocity were captured at a constant rate of 50Hz. 

The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters and then sampled in fixed-width sliding windows of 2.56 sec and 50% overlap (128 readings/window). The sensor acceleration signal, which has gravitational and body motion components, was separated using a Butterworth low-pass filter into body acceleration and gravity. The gravitational force is assumed to have only low frequency components, therefore a filter with 0.3 Hz cutoff frequency was used. From each window, a vector of features was obtained by calculating variables from the time and frequency domain. See 'features_info.txt' for more details. 

The variables in this database come from the accelerometer and gyroscope 3-axial raw signals. These time domain signals were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 

Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals. Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm. 

Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing the frequency domain signals.

These signals were used to estimate variables of the feature vector for each pattern:  
'-XYZ' is used to denote 3-axial signals in the X, Y and Z directions.

The data set includes the average mean and standard deviation for each signal variable for each activity and each subject.



## Variables
*Subject*: Participant ID\
*time_body_acceleration-mean()-XYZ*: Time domain signal 3-axial body acceleration mean\
*time_body_acceleration-std()-XYZ*: Time domain signal 3-axial body acceleration standard deviation\
*time_gravity_acceleration-mean()-XYZ*: Time domain signal 3-axial gravity acceleration mean\
*time_gravity_acceleration-std()-XYZ*: Time domain signal 3-axial gravity acceleration standard deviation\
*time_body_acceleration_jerk-mean()-XYZ*: Time domain signal 3-axial body acceleration jerk mean\
*time_body_acceleration_jerk-std()-XYZ*: Time domain signal 3-axial body acceleration jerk standard deviation\
*time_body_angular_velocity-mean()-XYZ*: Time domain signal 3-axial body angular velocity mean\
*time_body_angular_velocity-std()-XYZ*: Time domain signal 3-axial body angular velocity standard deviation\
*time_body_angular_velocity_jerk-mean()-XYZ*: Time domain signal 3-axial body angular velocity jerk mean\
*time_body_angular_velocity_jerk-std()-XYZ*: Time domain signal 3-axial body angular velocity jerk standard deviation\
*time_body_acceleration_magnitude-mean()*: Time domain signal body acceleration magnitude mean\
*time_body_acceleration_magnitude-std()*: Time domain signal body acceleration magnitude standard deviation\
*time_gravity_acceleration_magnitude-mean()*: Time domain signal gravity acceleration magnitude mean\
*time_gravity_acceleration_magnitude-std()*: Time domain signal gravity acceleration magnitude standard deviation\
*time_body_acceleration_jerk_magnitude-mean()*: Time domain signal body acceleration jerk magnitude mean\
*time_body_acceleration_jerk_magnitude-std()*: Time domain signal body acceleration jerk magnitude standard deviation\
*time_body_angular_velocity_magnitude-mean()*: Time domain signal body angular velocity magnitude mean\
*time_body_angular_velocity_magnitude-std()*: Time domain signal body angular velocity magnitude standard deviation\
*time_body_angular_velocity_jerk_magnitude-mean()*: Time domain signal body angular velocity jerk magnitude mean\
*time_body_angular_velocity_jerk_magnitude-std()*: Time domain signal body angular velocity jerk magnitude standard deviation\
*frequency_body_acceleration-mean()-XYZ*: Frequency domain signal 3-axial body acceleration mean\
*frequency_body_acceleration-std()-XYZ*: Frequency domain signal 3-axial body acceleration standard deviation\
*frequency_body_acceleration_jerk-mean()-XYZ*: Frequency domain signal 3-axial body acceleration jerk mean\
*frequency_body_acceleration_jerk-std()-XYZ*: Frequency domain signal 3-axial body acceleration jerk standard deviation\
*frequency_body_angular_velocity-mean()-XYZ*: Frequency domain signal 3-axial body angular velocity mean\
*frequency_body_angular_velocity-std()-XYZ*: Frequency domain signal 3-axial body angular velocity standard deviation\
*frequency_body_acceleration_magnitude-mean()*: Frequency domain signal body acceleration magnitude mean\
*frequency_body_acceleration_magnitude-std()*: Frequency domain signal body acceleration magnitude standard deviation\
*frequency_body_acceleration_jerk_magnitude-mean()*: Frequency domain signal body acceleration jerk magnitude mean\
*frequency_body_acceleration_jerk_magnitude-std()*: Frequency domain signal body acceleration jerk magnitude standard deviation\
*frequency_body_angular_velocity_magnitude-mean()*: Frequency domain signal body angular velocity magnitude mean\
*frequency_body_angular_velocity_magnitude-std()*: Frequency domain signal body angular velocity magnitude standard deviation\
*frequency_body_angular_velocity_jerk_magnitude-mean()*: Frequency domain signal body angular velocity jerk magnitude mean\
*frequency_body_angular_velocity_jerk_magnitude-std()*: Frequency domain signal body angular velocity jerk magnitude standard deviation\
*Activity*: Activity Type\
\
##
