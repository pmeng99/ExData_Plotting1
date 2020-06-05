library(dplyr)

if (!file.exists("household_power_consumption.txt")) {
    download.file("https://d396qusza40orc.cloudfront.net/exdata%2Fdata%2Fhousehold_power_consumption.zip", "household_power_consumption.zip", "curl")
    unzip("household_power_consumption.zip")
}

headers <- read.table("household_power_consumption.txt", sep = ";", na.strings = "?", header = TRUE, nrows = 1)
feb1 <- read.table("household_power_consumption.txt", header = FALSE, sep = ";", na.strings = "?", skip = grep("2\\/1\\/2007", readLines("household_power_consumption.txt")), nrows = 1439, col.names = names(headers))
feb2 <- read.table("household_power_consumption.txt", header = FALSE, sep = ";", na.strings = "?", skip = grep("2\\/2\\/2007", readLines("household_power_consumption.txt")), nrows = 1439, col.names = names(headers))
                   
tb <- rbind(feb1, feb2)

tb <- tb %>% transform(DateTime = strptime(paste(Date, Time, sep = " "), format="%m/%d/%Y %H:%M:%S")) %>% select(-Date, -Time)
