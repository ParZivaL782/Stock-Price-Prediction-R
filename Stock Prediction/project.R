#Checking the data with Date as index
data<-read.csv("E:\\BIg B\\Repos\\R project\\Dataset\\Stocks\\aaap.us.txt",header = TRUE,row.names = "Date")
data
head(data)
tail(data)
View(data)
summary(data)

#Reading the data without Date as index
data2<-read.csv("E:\\BIg B\\Repos\\R project\\Dataset\\Stocks\\aaap.us.txt",header = TRUE)
data2

#Checking the datatype of Date column
str(data2$Date)

#Converting into Date format
x<-as.Date(data2$Date)
head(x)
str(x)

year<-as.numeric(format(x,"%y"))
head(year)

month<-as.numeric(format(x,"%m"))
head(month)

day<-as.numeric(format(x,"%d"))
head(day)

data2<-cbind(data2,year,month,day)
View(data2)
#data2<-data2[-c(11:13)]

data2[1:3,]
head(sample(data2,10))

plot(data2$year,data2$Close,type = "l",xlab = "year",ylab = "Closing Price", lwd=2)
par(mfrow=c(1,1))

plot(data2[,5])
plot(data2[,5],xlab = "year",ylab = "Close_Price" )
plot(data2[,5],xlab = "year",ylab = "Close_Price",type = "l", lwd=2,col="blue")
plot(data2[,5],xlab = "year",ylab = "Close_Price",type = "l", lwd=2,xlim = c(0,2017))


plot(10*diff(log(data2[,5])),xlab = "year",ylab = "Closing",type="l",lwd=2,ylim = c(-5,5),main = "Closing",col="green")

install.packages("ggplot2")
library(ggplot2)
ggplot(data2,type="o")+geom_line(aes(x=year,y=Close))
ggplot(data=data2,aes(x=year,y=Close,group=1)) +geom_line()+geom_point()


data2
#Open Column
min(data2[,2],na.rm = T)
max(data2[,2],na.rm = T)

#Close Column
min(data2[,5],na.rm = T)
max(data2[,5],na.rm = T)

#Volume Column
min(data2[,6],na.rm = T)
max(data2[,6],na.rm = T)

#Multiple Plot
par(mfrow=c(2,1))


plot1<-plot(data2[,2],xlab = "Year",ylab = "Opening", type = "l",lwd=2,col="orange")
plot2<-plot(data[,5],xlab = "year",ylab = "Closing",type="l", lwd=2,main = "Closing Graph",col="green")

