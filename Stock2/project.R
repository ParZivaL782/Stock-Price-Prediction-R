data<-read.csv("E:\\BIg B\\Repos\\R project\\Dataset\\Stocks\\aaap.us.txt",header = TRUE)
data
head(data)
tail(data)
View(data)
summary(data)


class(data$Date)
str(data)
data_close_prices = data[,4]
data_close_prices
plot(data$Date,year)
par(mfrow=c(1,1))

