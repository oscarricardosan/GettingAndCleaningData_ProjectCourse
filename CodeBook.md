#Script's variables

### General Variables 

* **activity_labels** => names of the activirys.

* **features** => names of the columns of trainX and testX.


###Test Variables

* **testX** => Data from UCI HAR Dataset/test/X_test.txt.

* **testY** => Data from UCI HAR Dataset/test/y_test.txt.

* **testSubject** => Data from UCI HAR Dataset/test/subject_test.txt.

* **test** => Union between testSubject, testY and testX.

###Train Variables

* **trainX** =>  Data from UCI HAR Dataset/test/X_test.txt.

* **trainY** => Data from UCI HAR Dataset/test/y_test.txt.

* **trainSubject** => Data from UCI HAR Dataset/test/subject_test.txt.

* **train** =>  Union between trainSubject, trainY and trainX.

###Final Variables

* **dataFinal** => Union between train and test.


* **idLabels** => id variables.

* **dataLabels** => measure variables.

* **meltData** => melt data of dataFinal using the id idLabels and the measure dataLabels.

* **tidy_data** => Final data.


#The directory "UCI HAR Dataset" includes the following files:


- 'README.txt'

- **'features_info.txt'** => Shows information about the variables used on the feature vector.

- **'features.txt'** => List of all features.

- **'activity_labels.txt'** => Links the class labels with their activity name.

- **'train/X_train.txt'** => Training set.

- **'train/y_train.txt'** => Training labels.

- **'test/X_test.txt'** => Test set.

- **'test/y_test.txt'** => Test labels.

The following files are available for the train and test data. Their descriptions are equivalent. 

- **train/subject_train.txt'** => Each row identifies the subject who performed the activity for each window sample. Its range is from 1 to 30. 

- **train/Inertial Signals/total_acc_x_train.txt'** => The acceleration signal from the smartphone accelerometer X axis in standard gravity units 'g'. Every row shows a 128 element vector. The same description applies for the 'total_acc_x_train.txt' and 'total_acc_z_train.txt' files for the Y and Z axis. 

- **train/Inertial Signals/body_acc_x_train.txt'** => The body acceleration signal obtained by subtracting the gravity from the total acceleration. 

- **train/Inertial Signals/body_gyro_x_train.txt'** => The angular velocity vector measured by the gyroscope for each window sample. The units are radians/second. 

