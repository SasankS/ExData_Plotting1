data<- read.csv2("household_power_consumption.txt", na.strings = "?")
final<- data[data$Date %in% c("1/2/2007","2/2/2007"),]
activePower<- as.numeric(final$Global_active_power)
datetime <- strptime(paste(final$Date, final$Time, sep=" "), "%d/%m/%Y %H:%M:%S")
png(file="Plot-2.png",width = 480,height = 480)
plot(datetime, activePower, type="l", xlab="", ylab="Global Active Power (kilowatts)")
dev.off()