attach(dt.ok)
plot(tm3, Sub_metering_1, type = "l", ylab = "Energy sub metering")
lines(tm3, Sub_metering_2, type = "l", col = "red")
lines(tm3, Sub_metering_3, type = "l", col = "blue")
legend("topright",legend = c("Sub_metering_1", "Sub_metering_2","Sub_metering_3"), col=c("black", "red", "blue"), lty = 1)

dev.copy(png,'Rplot3.png')
dev.off()