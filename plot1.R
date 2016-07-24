library(data.table)
Data <- fread("/Users/AMOHY/household_power_consumption.txt",integer64 = "character")
Data <- as.data.frame(Data)
Data1 <- subset(Data,Data$Date=="1/2/2007" | Data$Date=="2/2/2007" )
x<- which(Data1$Global_active_power!="?")
Global <- Data1$Global_active_power
Global <- Global[x]
par(mfrow = c(1, 1), mar = c(4, 4, 2, 1), oma = c(0, 0, 2, 0))
hist(as.numeric(Global),col='Red',main='Global Active Power',xlab="Global Active Power (kilowatts)")
dev.copy(png,file="plot1.png",width = 480, height = 480)
dev.off()