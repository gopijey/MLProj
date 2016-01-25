library(lubridate)

#Read input data
powerData <- data.frame(read.delim("household_power_consumption.txt" , sep =";", na.string = "?"))

#filter input data
dataDfr <- powerData[dmy(powerData$Date) %in% ymd(c('2007-02-01' , '2007-02-02')),]
dataDfr$Date <- as.Date(dmy(dataDfr$Date))
dataDfr$Time <- strptime(dataDfr$Time, "%H:%M:%S")

## Create a new column that combones both Date and Time
dataDfr$Timestamp <-paste(pwrcons$Date, pwrcons$Time)