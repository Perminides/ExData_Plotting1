plot2 <- function(){
    
    my_data <- read.csv("household_power_consumption.txt", sep = ";",
                        na.strings = "?")
    my_data <- subset(my_data, Date == "1/2/2007" | Date == "2/2/2007")
    my_data$Date <- strptime(paste(my_data$Date, "/", my_data$Time, sep = ""),
                             "%d/%m/%Y/%H:%M:%S")
    
    png(file="plot2.png",width=480,height=480)
    plot(my_data$Date, my_data$Global_active_power, type="l",
         ylab = "Global Active Power (kilowatts)", xlab = "")
    
    dev.off()
    
}