library(data.table)

#file <- "https://d396qusza40orc.cloudfront.net/exdata%2Fdata%2Fhousehold_power_consumption.zip"
#download.file(file,"/Users/joao/Desktop/Estudos/coursera-eda/power.zip", method = "curl")
acs <- fread("household_power_consumption.txt",na.strings="?")
acs_f <- acs[Date == "1/2/2007" | Date == "2/2/2007",]

#plot 1
png(file="plot1.png")
hist(as.numeric(acs_f$Global_active_power),col = "red",main = "Global Active Power", xlab = "Global Active Power")
dev.off()