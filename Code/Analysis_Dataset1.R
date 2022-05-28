library(readxl)
EV <- read_excel("Datasets/EV_analysis.xlsx")
#View(EV)

y=EV$EV_Sales

x=EV$`Petrol_Price(₹)`

plot(x,y, main="Sales vs Petrol Price",
     xlab="Petrol Price(Sep-20 to Sep-21)", 
     ylab = "Electric Vehicles Sales",
     pch=19, 
     col="dark green")

#..........linear_Regression...............#

mod=lm(y~x)
mod
abline(mod, col="black",lwd=1.5)

summary(mod)
#................correlation...............#

cor(x,y,method = 'pearson')

#..........Sales vs Diesel...............#

y=EV$EV_Sales

z=EV$`Diesel_Price(₹)`

plot(z,y, main="Sales vs Diesel Price",
     xlab="Diesel Price(Sep-20 to Sep-21)", 
     ylab = "Electric Vehicle Sales",
     pch=19, 
     col="dark blue")
