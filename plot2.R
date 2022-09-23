# load data
source('load_data.R')

# make plot
with(energy, plot(datetime, Global_active_power, type='l', xlab='', ylab='Global Active Power (kilowatts)'))
