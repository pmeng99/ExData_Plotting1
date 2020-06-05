source("init.R")

## plot #2
png("plot2.png", width = 480, height = 480)
plot(tb$DateTime, tb$Global_active_power, type = "l", xlab = "", ylab = "Global Active Power (kilowatts)")
dev.off()

