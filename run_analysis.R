#Merges the training and the test sets to create one data set.
train_x <- read.table("Ori_Dataset/train/X_train.txt")
train_y <- read.table("Ori_Dataset/train/y_train.txt")
train_s <- read.table("Ori_Dataset/train/subject_train.txt")

test_x <- read.table("Ori_Dataset/test/X_test.txt")
test_y <- read.table("Ori_Dataset/test/y_test.txt")  
test_s <- read.table("Ori_Dataset/test/subject_test.txt")  

data<-data.frame(rbind(cbind(train_x, train_s, train_y), cbind(test_x, test_s, test_y)))
f_name <- as.vector(read.table("Ori_Dataset/features.txt")$V2)
names(data) <- c(f_name, "subject", "Y")

#Extracts only the measurements on the mean and standard deviation for each measurement. 
index<-c(grep("mean", f_name), grep("std", f_name), c(562,563))
sub_data<-data[,index]



#Uses descriptive activity names to name the activities in the data set
act_name <- read.table("Ori_Dataset/activity_labels.txt")
merge_data<-merge(sub_data, act_name, by.x="Y", by.y = "V1")[,2:82]

#Appropriately labels the data set with descriptive activity names. 


index = 1
new_names = sapply(names(merge_data), function(x){x=gsub("-","_", x)
                                                  x=gsub("\\(", "", x)
                                                  x=gsub("\\)", "", x)})

names(merge_data) <- new_names

names(merge_data)[dim(merge_data)[2]]<-"activity"


#Creates a second, independent tidy data set with the average of each variable for each activity and each subject.
library(reshap2)
melt_data <- melt(merge_data, id.vars = c("subject", "activity"))
clean_data <- dcast(melt_data, subject + activity ~ variable, mean)
write.table(clean_data, "clean_data.txt")
#write.table(names(clean_data), "CodeBook.md")