source("init.R")

## plot #3
png("plot3.png", width = 480, height = 480)

plot(tb$DateTime, tb$Sub_metering_1, xlab = "", ylab = "Energy sub metering", type = "n", ylim = c(0, 25))
lines(tb$DateTime, tb$Sub_metering_1, col = "black")
lines(tb$DateTime, tb$Sub_metering_2, col = "red")
lines(tb$DateTime, tb$Sub_metering_3, col = "blue")
legend("topright", legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), col = c("black", "red", "blue"), lty = 1)

dev.off()

