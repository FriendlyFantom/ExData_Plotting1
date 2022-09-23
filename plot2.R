# load data
source('load_data.R')

# make plot
png(filename='plot2.png')
with(energy, plot(datetime, Global_active_power, type='l', xlab='', ylab='Global Active Power (kilowatts)'))
dev.off()
