par(mfrow=c(2,2))


plot(subdata$timestamp,subdata$Global_active_power, type="l", xlab="", ylab="Global Active Power")
##PLOT 2
plot(subdata$timestamp,subdata$Voltage, type="l", xlab="datetime", ylab="Voltage")

##PLOT 3
plot(subdata$timestamp,subdata$Sub_metering_1, type="l", xlab="", ylab="Energy sub metering")
lines(subdata$timestamp,subdata$Sub_metering_2,col="red")
lines(subdata$timestamp,subdata$Sub_metering_3,col="blue")
legend("topright", col=c("black","red","blue"), c("Sub_metering_1  ","Sub_metering_2  ", "Sub_metering_3  "),lty=c(1,1), bty="n", cex=.1)
#PLOT 4
plot(subdata$timestamp,subdata$Global_reactive_power, type="l", xlab="datetime", ylab="Global_reactive_power")

#OUTPUT
dev.copy(png, file="plot4.png", width=480, height=480)
dev.off()
