# load data
source('load_data.R')

# set plot parameters (2x2 grid)
png(filename='plot4.png')
par(mfrow = c(2, 2))

# plot 1 / 4
with(energy, plot(datetime, Global_active_power, type='l', xlab='', ylab='Global Active Power'))

# plot 2 / 4
with(energy, plot(datetime, Voltage, type='l'))

# plot 3 / 4
with(energy, plot(datetime, Sub_metering_1, type='l', col='black', xlab='', ylab='Energy sub metering'))
with(energy, lines(datetime, Sub_metering_2, type='l', col='red'))
with(energy, lines(datetime, Sub_metering_3, type='l', col='blue'))
legend('topright', legend=c(num_cols[5:7]), col=c('black', 'red', 'blue'), lty=1)

# plot 4 / 4
with(energy, plot(datetime, Global_reactive_power, type='l'))
dev.off()
