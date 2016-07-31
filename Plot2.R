data <- read.csv("/household_power_consumption.txt", header=TRUE, sep=";", stringsAsFactors=FALSE, na.strings="?")
View(data)
head(data)

subData <- subset(data, as.Date(data$Date, format = "%d/%m/%Y")>= "2007-02-01" & as.Date(data$Date, format = "%d/%m/%Y") <= "2007-02-02" )
 subData$Date<-as.Date(subData$Date,format = "%d/%m/%Y")
 subData$dateTime <- as.POSIXct(paste(subData$Date, subData$Time, format= "%Y-%m-%d %H:%M:%S"))
plot(subData$dateTime, subData$Global_active_power, type = "l", xlab = "", ylab = "Global Active Power (kilowatts")
plot(subData$dateTime, subData$Global_active_power, type = "l", xlab = "", ylab = "Global Active Power (kilowatts)" )
 dev.copy(png, file = "plot2.png", width = 480,height = 480)
 dev.off()

 
