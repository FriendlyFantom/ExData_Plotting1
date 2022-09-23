library(lubridate)

# read in table and filter dates
energy <- read.table('household_power_consumption.txt', sep=';', header=TRUE, stringsAsFactors = FALSE)

filter <- (energy$Date == '1/2/2007') | (energy$Date == '2/2/2007')
energy <- energy[filter,]

# create a datetime column
energy$datetime <- strptime(paste(energy$Date, energy$Time), format='%d/%m/%Y %H:%M:%S', tz='cet')

# convert columns from chr to num
num_cols <- names(energy)[3:9]
energy[num_cols] <- sapply(energy[num_cols], as.numeric)
