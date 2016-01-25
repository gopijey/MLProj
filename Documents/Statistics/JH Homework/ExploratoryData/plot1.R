frame()
plot.new()

#dataDfr is the data frame that has been prepared using Assignment.R file.

png(file = "plot1.png", bg = "transparent",width = 480, height = 480)
with(dataDfr, hist(Global_active_power, col="red", xlab="Global Active Power (kilowatts)", main="Global Active Power"))
dev.off()
