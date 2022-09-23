# load data
source('load_data.R')

# make plot
with(energy, plot(datetime, Sub_metering_1, type='l', col='black', xlab='', ylab='Energy sub metering'))
with(energy, lines(datetime, Sub_metering_2, type='l', col='red'))
with(energy, lines(datetime, Sub_metering_3, type='l', col='blue'))
legend('topright', legend=c(num_cols[5:7]), col=c('black', 'red', 'blue'), lty=1)
