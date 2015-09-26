library(dplyr)
library(reshape2)

featureNames <- read.table("features.txt")[['V2']]
activityLabels <- read.table("activity_labels.txt")[['V2']]

# ===== TEST DATASET =====

# read test dataset, with column names
testFrame <- read.table("test/X_test.txt", col.names = featureNames)

# keep only columns with 'mean' or 'std' in their names
testFrame <- select(testFrame, c(contains("mean"), contains("std")))

# translate each (numeric) activity into a (textual) factor
activityIndex <- read.table("test/y_test.txt")[['V1']]
activity <- factor(activityIndex, labels = activityLabels)

# read subjects data
subject <- read.table("test/subject_test.txt")[['V1']]

# add activity and subject columns to test dataset
testFrame <- mutate(testFrame, activity, subject)

# ===== TRAINING DATASET =====

# read training dataset, with column names
trainFrame <- read.table("train/X_train.txt", col.names = featureNames)

# keep only columns with 'mean' or 'std' in their names
trainFrame <- select(trainFrame, c(contains("mean"), contains("std")))

# translate each (numeric) activity into a (textual) factor
activityIndex <- read.table("train/y_train.txt")[['V1']]
activity <- factor(activityIndex, labels = activityLabels)

# read subjects data
subject <- read.table("train/subject_train.txt")[['V1']]

# add activity and subject columns to test dataset
trainFrame <- mutate(trainFrame, activity, subject)

# ===== MERGE DATASETS =====

mergedFrame <- rbind(testFrame, trainFrame)

# ===== RECAST DATASET =====
# Average each variable, grouped by each (ACTIVITY,SUBJECT) pair

meltedFrame <- melt(mergedFrame, id=c("activity","subject"))
castFrame <- dcast(meltedFrame, activity + subject ~ variable, mean)

# the recast dataset is the result
#castFrame
