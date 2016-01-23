data<- read.csv2("household_power_consumption.txt", na.strings = "?")
final<- data[data$Date %in% c("1/2/2007","2/2/2007"),]
activePower<- as.numeric(final$Global_active_power)
png(file="Plot-1.png",width = 480,height = 480)
hist(activePower,col="red",xlab="Global Active Power (kilowatts)",main="Global Active Power")
dev.off()