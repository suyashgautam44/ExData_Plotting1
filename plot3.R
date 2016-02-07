hpc <- read.csv("~/Desktop/Exercise Files for R/household_power_consumption.txt", sep=";")
hpc$Date <- as.Date(hpc$Date, format="%d/%m/%Y")
subdata <- hpc[(hpc$Date == "2007-02-01") | (hpc$Date == "2007-02-02"), ]


plot(subdata$timestamp, subdata$Sub_metering_1, type="l", xlab="", ylab="Energy sub metering")
lines(subdata$timestamp, subdata$Sub_metering_2, col="red")
lines(subdata$timestamp, subdata$Sub_metering_3,col="blue")
legend("topright", c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), lty=1, lwd=2.5, col=c("black", "red", "blue"))
dev.copy(png, file="plot3.png", width=480, height=480)
dev.off()
