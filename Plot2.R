#to create the second plot, need to add weekday first
day = weekdays(dt3$Date,abbreviate = T)

dt3 = cbind(dt3, day)
head(dt3)
table(dt3$day)

#convert time - put time and date together
str(dt3)
attach(dt3)
tm = apply(cbind(rownames(dt3), dt3[c('Date','Time')]), 1, paste, collapse=" ")

library(stringr)

tm2 = word(tm,2,3)
tm2
tm3 = strptime(tm2, "%Y-%m-%d %H:%M:%S")

#adding back time to data
dt.ok = cbind(dt3, tm3)

str(dt.ok)

#make the second plot
attach(dt.ok)
plot(tm3, Global_active_power, type = "l", ylab = "Global Active Power (killowatts)")

dev.copy(png,'Rplot2.png')
dev.off() 
