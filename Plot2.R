consumption_data <- read.csv("household_power_consumption.txt",header = T,sep = ";",colClasses = "character")
feb1_and_feb2_data <- consumption_data[consumption_data$Date %in% c("1/2/2007","2/2/2007"),]

vector_time_with_date <- strptime(paste(feb1_and_feb2_data$Date,feb1_and_feb2_data$Time),format = "%d/%m/%Y %H:%M:%S")

png(filename = "Plot2.png",width = 480,height = 480)

plot(vector_time_with_date,as.numeric(feb1_and_feb2_data$Global_active_power),type = "l",xlab = "Day",ylab ="Global active power (Kilowatts)")

dev.off()