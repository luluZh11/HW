dt = read.csv("M:/exploratory data/household_power_consumption.txt", sep = ";")

names(dt)
head(dt)
str(dt)

Date <- as.Date(dt$Date, "%d/%m/%Y")
head(Date)

dt = cbind(dt, Date)
head(dt)

dt = dt[,-1]

#subset the data - 2007/2/1 - 2007/2/2

dt2 <- dt[(dt$Date >= as.Date("2007-02-01")), ]
dt3 = dt2[(dt2$Date <= as.Date("2007-02-02")),]

summary(dt3)

#plot 1
str(dt3)

dt3$Global_active_power = as.numeric(as.character(dt3$Global_active_power))

attach(dt3)
hist(Global_active_power, col = "red", main = "Global Active Power")
dev.copy(png,'Rplot1.png')
dev.off() 

