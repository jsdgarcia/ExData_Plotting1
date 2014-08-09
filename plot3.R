library(data.table)

#file <- "https://d396qusza40orc.cloudfront.net/exdata%2Fdata%2Fhousehold_power_consumption.zip"
#download.file(file,"/Users/joao/Desktop/Estudos/coursera-eda/power.zip", method = "curl")
acs <- fread("household_power_consumption.txt")
acs_f <- acs[Date == "1/2/2007" | Date == "2/2/2007",]
datetime <- strptime(paste(as.character(acs_f$Date), as.character(acs_f$Time)),format='%d/%m/%Y %H:%M:%S')

#plot 3
png(file="plot3.png")
plot(datetime,acs_f$Sub_metering_1,type="l",xlab = "", ylab = "Energy Sub Metering")
points(datetime,acs_f$Sub_metering_2,type="l", col = "red")
points(datetime,acs_f$Sub_metering_3,type="l", col = "blue")
legend("topright",lty = 1, col =c("black", "red", "blue"), legend = c("Sub_metering_1","Sub_metering_2","Sub_metering_3"))
dev.off()