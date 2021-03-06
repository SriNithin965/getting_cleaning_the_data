library(data.table)
library(dplyr)
library(reshape2)
p <- getwd()
url <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
download.file(url,file.path(p,"dataFiles.zip"))
unzip(zipfile = "dataFiles.zip")
setwd("C:\Users\Lenovo\Desktop\project\UCI HAR Dataset")
test <- fread("test/X_test.txt")
train <- fread("train/X_train.txt")
features <- fread("features.txt",col.names = c(num,names))
f <- feature[names]
setnames(test,f)
setnames(train,f)
test_label <- fread("test/y_test.txt",col.names = "label")
test_subject <- fread("test/subject_test.txt",col.names = "subject")
test <- cbind(test,test_label,test_subject)
train_label <- fread("train/y_train.txt",col.names = "label")
train_subject <- fread("train/subject_train.txt",col.names = "subject")
train <- cbind(train,train_label,train_subject)
fea <- grep("(mean|std)\\(\\)",features[,names],value = TRUE)
n = length(fea)
fea[n]="label"
fea[n+1]="subject"
fea2 <- gsub("[-()]",".",fea)
test_c <- select(test,all_of(fea2))
train_c <- select(train,all_of(fea2))
combined <- rbind(train_c,test_c)
act <- fread("activity_labels.txt",col.names=c("i","activity"))
combined[["label"]] <- factor(combined[,label],levels = act[["i"]],labels= act[["activity"]])
combined <- melt(data = combined, id = c("subject", "label"))
combined <- dcast(data = combined, subject + label ~ variable, fun.aggregate = mean)
fwrite(x = combined, file = "tidyData.txt", quote = FALSE)


