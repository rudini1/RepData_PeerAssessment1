download.file("https://d396qusza40orc.cloudfront.net/repdata%2Fdata%2Factivity.zip", "activitymonitoringdatafile.zip")
unzip("activitymonitoringdatafile.zip")

library(data.table)

activity <- fread("activity.csv", header = TRUE, sep = ",", na.strings = "NA")
