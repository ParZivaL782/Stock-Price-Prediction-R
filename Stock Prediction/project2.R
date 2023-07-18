data<-read.csv("E:\\BIg B\\Repos\\R project\\Dataset\\Stocks\\aaap.us.txt",header = TRUE,row.names = "Date")
data
head(data)
tail(data)
View(data)
summary(data)


class(data)

data_close_prices = data[,4]
data_close_prices
plot(data_close_prices,xla)
par(mfrow=c(1,1))
data2
