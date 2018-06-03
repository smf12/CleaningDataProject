# load required packages
library(tidyr)
library(dplyr)

# Load data from test and training groups and merge into single data frame
features<-read.table("./UCI HAR Dataset/features.txt")
featnames<-unlist(features[2])
trainsub<-read.table("./UCI HAR Dataset/train/subject_train.txt",col.names="subjectid")
trainset<-read.table("./UCI HAR Dataset/train/X_train.txt",col.names=featnames)
trainact<-read.table("./UCI HAR Dataset/train/Y_train.txt",col.names="activity")
train<-cbind(trainsub,trainact,trainset)
testsub<-read.table("./UCI HAR Dataset/test/subject_test.txt",col.names="subjectid")
testset<-read.table("./UCI HAR Dataset/test/X_test.txt",col.names=featnames)
testact<-read.table("./UCI HAR Dataset/test/Y_test.txt",col.names="activity")
test<-cbind(testsub,testact,testset)
data<-merge(train,test,all="TRUE")

# Tidy Data
data$measnum<-1:length(data$subjectid) # this is used to id values from a single measurement
# collapse measurement variables into single column
data<-gather(data,measurement,num,-subjectid,-activity,-measnum)
# Extract measurements that are means
means<-data[grepl(("mean"),data$measurement),c("measnum","subjectid","activity","measurement","num")]
# Extract measurements that are standard deviations (stds)
stds<-data[grepl(("std"),data$measurement),c("measnum","num")]
# Rename columns with descriptive variable
stds<-rename(stds,"stdev"="num")
means<-rename(means,"mean"="num")
# Merge mean and std data into single variable
data<-merge(means,stds,by="measnum",all=TRUE)
data<-select(data,-"measnum") # remove single measurement id
# Cleanup meaurement variable names
data$measurement<-sub("mean|std","",data$measurement)
data$measurement<-gsub("\\.","",data$measurement)
# Label activities with descriptive variables
activity_labels<-features<-read.table("./UCI HAR Dataset/activity_labels.txt")
data$activity <- factor(data$activity,labels=unlist(activity_labels[2]))

#Create additional tiny dataset containing averages for each measurement, activity, and subject
tidy<-data %>%
    group_by(measurement,activity,subjectid) %>%
    summarize(averages = mean(mean))

# Save tidied data
if (!file.exists("./tidydata")) {dir.create("./tidydata")}
write.csv(data,"./tidydata/data.csv")
write.csv(tidy,"./tidydata/tidy.csv")
