frame()
plot.new()


#dataDfr is the data frame that has been prepared using Assignment.R file.

png(file = "plot2.png", bg = "transparent",width = 480, height = 480)
plot(strptime(dataDfr$Timestamp, "%d/%m/%Y %H:%M:%S"), dataDfr$Global_active_power, type = "l", xlab = "", ylab = "Global Active Power(kilowatts)")
dev.off()

