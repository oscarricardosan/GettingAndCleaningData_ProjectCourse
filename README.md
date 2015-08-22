#How Does run_analysis.R work?

##1.Requirements

For that the script works correctly, needs:

1. Install the packages data.table and reshape2.
2. Download https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip.
3. Extract the zip with the same name 'UCI HAR Dataset'

##2.How it works:

0. Call the libraries data.table and reshape2.
1. read the data X_test.txt, y_test.txt and subject_test.txt.
2. Assign names to test.
3. Get only the measurements with mean or std in the name of testX.
4. Associate activity with testY data.
5. Merge the data of test.

6. read the data X_train.txt, Y_train.txt and subject_train.txt.
7. Assign names to train.
8. Get only the measurements with mean or std in the name of trainX.
9. Associate activity with trainY data.

10. Merge the data of train.

11. Merge train and test.
12. Meltf of the end data.
13. Write table in the working Directory. 


##2.How call it:

You have to type in the R console the next: 

>source('run_analysis.R')

And that is all.

----