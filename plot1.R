# load data
source('load_data.R')

# make plot
with(energy, hist(Global_active_power, col='red', xlab='Global Active Power (kilowatts)'))
