# load data
source('load_data.R')

# make plot
png(filename='plot1.png')
with(energy, hist(Global_active_power, col='red', xlab='Global Active Power (kilowatts)'))
dev.off()
