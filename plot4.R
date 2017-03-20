plot4 <- function(){
    
    my_data <- read.csv("household_power_consumption.txt", sep = ";",
                        na.strings = "?")
    my_data <- subset(my_data, Date == "1/2/2007" | Date == "2/2/2007")
    my_data$Date <- strptime(paste(my_data$Date, "/", my_data$Time, sep = ""),
                             "%d/%m/%Y/%H:%M:%S")
    
    png(file="plot4.png",width=480,height=480)
    
    par(mfcol=c(2,2))
    
    # Plot 1
    plot(my_data$Date, my_data$Global_active_power, type="l",
         ylab = "Global Active Power", xlab = "")
    
    # Plot 2
    plot(my_data$Date, my_data$Sub_metering_1, type="l", 
         ylab = "Energy sub metering", xlab = "")
    lines(my_data$Date, my_data$Sub_metering_2, type="l", col="red")
    lines(my_data$Date, my_data$Sub_metering_3, type="l", col="blue")
    legend("topright", legend = c("Sub_metering_1", "Sub_metering_2", 
                                  "Sub_metering_3"), col = c("black", "red", "blue"), lty=c(1,1,1))
    
    # Plot 3
    plot(my_data$Date, my_data$Voltage, type="l", ylab = "Voltage", xlab = "datetime")
    
    # Plot 4
    plot(my_data$Date, my_data$Global_reactive_power, type="l", ylab = "Global_reactive_power", xlab = "datetime")
    
    dev.off()
    
}