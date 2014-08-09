library(data.table)

#file <- "https://d396qusza40orc.cloudfront.net/exdata%2Fdata%2Fhousehold_power_consumption.zip"
#download.file(file,"/Users/joao/Desktop/Estudos/coursera-eda/power.zip", method = "curl")
acs <- fread("household_power_consumption.txt")

acs_f <- acs[Date == "1/2/2007" | Date == "2/2/2007",]


#plot 2
png(file="plot2.png")
datetime <- strptime(paste(as.character(acs_f$Date), as.character(acs_f$Time)),format='%d/%m/%Y %H:%M:%S')
plot(datetime,as.numeric(acs_f$Global_active_power),type="l",ylab="Global Active Power [kilowatts]",xlab = "")
dev.off()