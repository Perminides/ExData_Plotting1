plot1 <- function(){
    
    my_data <- read.csv("household_power_consumption.txt", sep = ";",
                        na.strings = "?")
    my_data <- subset(my_data, Date == "1/2/2007" | Date == "2/2/2007")
    
    png(file="plot1.png",width=480,height=480)
    hist(my_data$Global_active_power, col = "red", main= "Global Active Power",
         xlab = "Global Active Power (kilowatts)")
    dev.off()
    
    }