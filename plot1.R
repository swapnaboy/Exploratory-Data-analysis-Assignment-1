# Exploratory-Data-analysis-Assignment-1, plot 1
# plot 1 - r code
data <- read.csv("/household_power_consumption.txt", header=TRUE, sep=";", stringsAsFactors=FALSE, na.strings="?")
View(data)
head(data)
subData <- subset(data, as.Date(data$Date, format = "%d/%m/%Y") >= "2007-02-01" & as.Date(data$Date, format = "%d/%m/%Y") <="2007-02-02" )
hist(subData$Global_active_power,col = "Red",main = "Global Active Power", xlab = "Global Active Power (kilowatts)")
dev.copy(png,file = "plot1.png",width = 480,height = 480)
dev.off()

