# Reproducible Research: Peer Assessment 1


## Loading and preprocessing the data
download.file("https://d396qusza40orc.cloudfront.net/repdata%2Fdata%2Factivity.zip", "activitymonitoringdatafile.zip")
unzip("activitymonitoringdatafile.zip")

library(data.table)
library(lubridate)
library(dplyr)
library(ggplot2)

activity <- fread("activity.csv", header = TRUE, sep = ",", na.strings = "NA")
totalstepsperday <- activity %>%
      mutate(date = as.POSIXct(date)) %>%
      group_by(date) %>%
      summarise(totalsteps = sum(steps))



## What is mean total number of steps taken per day?



## What is the average daily activity pattern?



## Imputing missing values



## Are there differences in activity patterns between weekdays and weekends?
