Enter file contents heresetwd("C:\\Hailiang\\my training\\Getting and Cleaning Data");
train=read.table("./data/project/train/X_train.txt",);
test=read.table("./data/project/test/X_test.txt");
feature=read.table("./data/project/features.txt");
names(train)<-feature[,2];
names(test)<-feature[,2];
mergeData=rbind(train, test, all=TRUE);
head<-names(mergeData)
e1<-grep("mean",head);
e2<-grep("std",head);
e3=c(e1,e2);
Extract1<-mergeData[,e3];
head1<-names(Extract1)
e4<-grep("meanFreq",head1);
Extract<-Extract1[,-e4];
newhead1<-names(Extract);
newhead2<-gsub("\\(.*\\)","",newhead1);
newhead<-gsub(pattern="-", replacement=".", newhead2);
names(Extract)<-newhead;

label=read.table("./data/project/activity_labels.txt");
y_train=read.table("./data/project/train/y_train.txt");
subject_test=read.table("./data/project/test/subject_test.txt");
y_test=read.table("./data/project/test/y_test.txt");

Activity=rbind(y_train, y_test, all=TRUE);
Extract$Activity_label[Activity==1]="WALKING";
Extract$Activity_label[Activity==2]="WALKING_UPSTAIRS";
Extract$Activity_label[Activity==3]="WALKING_DOWNSTAIRS";
Extract$Activity_label[Activity==4]="SITTING";
Extract$Activity_label[Activity==5]="STANDING";
Extract$Activity_label[Activity==6]="LAYING";

Newdata<-aggregate(.~Activity_label,data=Extract,mean);

write.table(Newdata,"./data/project/tidydata.txt",row.name=FALSE);
