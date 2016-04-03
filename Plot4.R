par(mfrow = c(2,2))
attach(dt.ok)
plot(tm3,Global_active_power, type = "l", ylab = "Global Active Power", xlab = "")
plot(tm3, Voltage, type = "l", xlab = "datetime")
plot(tm3, Sub_metering_1, type = "l", ylab = "Energy sub metering", xlab = "")
lines(tm3, Sub_metering_2, type = "l", col = "red")
lines(tm3, Sub_metering_3, type = "l", col = "blue")
legend("topright",legend = c("Sub_metering_1", "Sub_metering_2","Sub_metering_3"), 
       col=c("black", "red", "blue"), lty = 1, bty = "n")
plot(tm3, Global_reactive_power, type = "l", xlab = "datetime")

dev.copy(png,'Rplot4.png')
dev.off()

#additional plot
par(mfrow = c(1,1))
attach(dt.ok)
Global_reactive_power = as.numeric(as.character(Global_reactive_power))
hist(Global_reactive_power)

dev.copy(png,'Rplot5.png')
dev.off()