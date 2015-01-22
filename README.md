# Coursera-Learning
Getting and Cleaning data project
The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data. 

The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters and then sampled in fixed-width sliding windows of 2.56 sec and 50% overlap (128 readings/window). The sensor acceleration signal, which has gravitational and body motion components, was separated using a Butterworth low-pass filter into body acceleration and gravity. The gravitational force is assumed to have only low frequency components, therefore a filter with 0.3 Hz cutoff frequency was used. From each window, a vector of features was obtained by calculating variables from the time and frequency domain. 

and I did the following with it:

1.Merged the training and the test sets to create one data set.
code:
train=read.table("./data/project/train/X_train.txt");%read the train data set
test=read.table("./data/project/test/X_test.txt");%read the test data set
feature=read.table("./data/project/features.txt");%read the feature data set
names(train)<-feature[,2];%add variable names for train data set
names(test)<-feature[,2];%add variable names for test data set
mergeData=rbind(train, test, all=TRUE);%merger the train data and test data

2.Extracted only the measurements on the mean and standard deviation for each measurement. 
code:
head<-names(mergeData)
e1<-grep("mean",head);%find the location of the variables with "mean" in their names
e2<-grep("std",head);%find the location of the variables with "std" in their names
e3=c(e1,e2);%combine the location vector for "mean" data and "std" data
Extract1<-mergeData[,e3];%extract the data set with "mean" and "std" in there varibale names
head1<-names(Extract1)
e4<-grep("meanFreq",head1);%find the location of the variables with "meanFreq" in their names
Extract<-Extract1[,-e4];%remove all the dataset with "meanFreq" data set.

3.Used descriptive activity names to name the activities in the data set.
code:
newhead1<-names(Extract);
newhead2<-gsub("\\(.*\\)","",newhead1);%remove the "()" in every variable name
newhead<-gsub(pattern="-", replacement=".", newhead2);%replace the "-" with "."in every variable name
names(Extract)<-newhead;%Rename the Extract data

4.Appropriately labeled the data set with descriptive variable names.
code:
label=read.table("./data/project/activity_labels.txt");%read the "activity_label" data set
y_train=read.table("./data/project/train/y_train.txt");%read the "y_train" data set
y_test=read.table("./data/project/test/y_test.txt");%read the "y_test" data set
Activity=rbind(y_train, y_test, all=TRUE);%combine/merge the y_train data and y_test data
Extract$Activity_label[Activity==1]="WALKING";%change the 1# activity name as "walking"
Extract$Activity_label[Activity==2]="WALKING_UPSTAIRS";%change the 1# activity name as "WALKING_UPSTAIRS"
Extract$Activity_label[Activity==3]="WALKING_DOWNSTAIRS";%change the 1# activity name as "WALKING_DOWNSTAIRS"
Extract$Activity_label[Activity==4]="SITTING";%change the 1# activity name as "STANDING"
Extract$Activity_label[Activity==5]="STANDING";%change the 1# activity name as "WALKING_DOWNSTAIRS"
Extract$Activity_label[Activity==6]="LAYING";%change the 1# activity name as "LAYING"

5.From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.
code:
Newdata<-aggregate(.~Activity_label,data=Extract,mean);%calculate the average value for each variables of each activity
write.table(Newdata,"./data/project/tidydata.txt",row.name=FALSE);%write the date into local file"tidydata.txt"
