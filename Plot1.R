consumption_data <- read.csv("household_power_consumption.txt",header = T,sep = ";",colClasses = "character")
feb1_and_feb2_data <- consumption_data[consumption_data$Date %in% c("1/2/2007","2/2/2007"),]

png(filename = "Plot1.png")
hist(as.numeric(feb1_and_feb2_data$Global_active_power),col = "red",xlab = "Global active power (kilowatt)",main = "Global active power")

dev.off()