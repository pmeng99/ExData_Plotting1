source("init.R")

## plot 4
png("plot4.png", width = 480, height = 480)

par(mfrow = c(2, 2))

plot(tb$DateTime, tb$Global_active_power, type = "l", xlab = "", ylab = "Global Active Power (kilowatts)")

plot(tb$DateTime, tb$Voltage, type = "l", xlab = "datetime", ylab = "Voltage")

plot(tb$DateTime, tb$Sub_metering_1, xlab = "", ylab = "Energy sub metering", type = "n", ylim = c(0, 30))
lines(tb$DateTime, tb$Sub_metering_1, col = "black")
lines(tb$DateTime, tb$Sub_metering_2, col = "red")
lines(tb$DateTime, tb$Sub_metering_3, col = "blue")
legend("topright", legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), col = c("black", "red", "blue"), lty = 1, box.lwd = 0)

plot(tb$DateTime, tb$Global_reactive_power, type = "l", xlab = "datetime", ylab = "Global_reactive_power")

dev.off()
