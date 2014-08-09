library(data.table)

#file <- "https://d396qusza40orc.cloudfront.net/exdata%2Fdata%2Fhousehold_power_consumption.zip"
#download.file(file,"/Users/joao/Desktop/Estudos/coursera-eda/power.zip", method = "curl")
acs <- fread("household_power_consumption.txt")

acs_f <- acs[Date == "1/2/2007" | Date == "2/2/2007",]

#plot 4
png(file="plot4.png")
par(mfrow = c(2, 2))
plot(datetime,as.numeric(acs_f$Global_active_power),type="l",ylab="Global Active Power",xlab = "")
plot(datetime,acs_f$Voltage,type="l",ylab="Voltage")
plot(datetime,acs_f$Sub_metering_1,type="l",xlab = "", ylab = "Energy Sub Metering")
points(datetime,acs_f$Sub_metering_2,type="l", col = "red")
points(datetime,acs_f$Sub_metering_3,type="l", col = "blue")
legend("topright",lty = 1, col =c("black", "red", "blue"), legend = c("Sub_metering_1","Sub_metering_2","Sub_metering_3"))
plot(datetime,acs_f$Global_reactive_power,type="l",ylab="Global_reactive_power",xlab="datetime")
dev.off()