library(readxl)
sales <- read_excel("SalesVsChargingStations.xlsx")
#View(sales)

y=sales$`SLAES_OF_EV_IN_OCTOBER2021(Units)`
x=sales$`NO._OF_ CHARGING_STATIONS(Units)`

bins=seq(1000,8000,500)
bins2=seq(0,90,10)

plot(x,y,
     xlab="No. of charging station",
     ylab="Sales of electric vehicle",
     pch=19)
axis(1,at=bins2,labels = bins2)
axis(2,at=bins,labels = bins)

#.......linear_regression............#

mod=lm(y~x)
mod
abline(mod,col="red", lwd=2)
summary(mod)
#.......correlation............#

cor(y,x)

