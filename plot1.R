
hpc <- read.csv("~/Desktop/Exercise Files for R/household_power_consumption.txt", sep=";")
hpc$Date <- as.Date(hpc$Date, format="%d/%m/%Y")
subdata <- hpc[(hpc$Date == "2007-02-01") | (hpc$Date == "2007-02-02"), ]
subdata$Global_active_power <- as.numeric(as.character(subdata$Global_active_power))
subdata$Global_reactive_power <- as.numeric(as.character(subdata$Global_reactive_power))
subdata$Voltage <- as.numeric(as.character(subdata$Voltage))

subdata <- transform(subdata, timestamp=as.POSIXct(paste(Date, Time)), "%d/%m/%Y %H:%M:%S")
subdata$Sub_metering_1 <- as.numeric(as.character(subdata$Sub_metering_1))
subdata$Sub_metering_2 <- as.numeric(as.character(subdata$Sub_metering_2))
subdata$Sub_metering_3 <- as.numeric(as.character(subdata$Sub_metering_3))

hist(subdata$Global_active_power, main = paste("Global Active Power"), col="red", xlab="Global Active Power (kilowatts)")
dev.copy(png, file="plot1.png", width=480, height=480)
dev.off()
