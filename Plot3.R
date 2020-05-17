consumption_data <- read.csv("household_power_consumption.txt",header = T,sep = ";",colClasses = "character")
feb1_and_feb2_data <- consumption_data[consumption_data$Date %in% c("1/2/2007","2/2/2007"),]

feb1_and_feb2_data$date_time <- strptime(paste(feb1_and_feb2_data$Date,feb1_and_feb2_data$Time),format = "%d/%m/%Y %H:%M:%S")


png(filename = "Plot3.png",width = 480,height = 480)

with(feb1_and_feb2_data,plot(date_time,as.numeric(feb1_and_feb2_data$Sub_metering_1),type="l",col="black",xlab="Day",ylab="Energy sub metering"))
with(feb1_and_feb2_data,lines(date_time,as.numeric(feb1_and_feb2_data$Sub_metering_2),type="l",col="red"))
with(feb1_and_feb2_data,lines(date_time,as.numeric(feb1_and_feb2_data$Sub_metering_3),type="l",col="blue"))
legend("topright",pch = "-",col = c("black","red","blue"),legend=c("Sub_metering_1","Sub_metering_2","Sub_metering_3"),cex=0.75)

dev.off()