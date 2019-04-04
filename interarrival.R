simulationdata =read.csv("Simulationdata.csv")
hist(simulationdata$Interarrival.Times, main = "Histogram of Interarrival Times")
hist(simulationdata$Machine.1, main = "Historgram of Machine 1 service times")
hist(simulationdata$Machine.2, main = "Histogram of Machine 2 Service Times")

install.packages("fitdistrplus")
library(fitdistrplus)

Interarrival.Times.Param = fitdist(simulationdata$Interarrival.Times, "exp")
Machine.1.Param = fitdist(simulationdata$Machine.1, "exp")
Machine.2.Param = fitdist(simulationdata$Machine.2, "exp")

Interarrival.Times.Param$estimate

Machine.1.Param$estimate
Machine.2.Param$estimate

install.packages("swirl")


 bWidgetNumber = 1:100

set.seed(1)
rIAT= runif(100)
RandIAT = (-1/0.4611669)*log(1-rIAT,exp(1))
AT = cumsum(RandIAT)
set.seed(2)
rMach1= runif(100)
RandMachServ1 = (-1/1.38255)*log(1-rMach1,exp(1))
set.seed(3)
rMach2= runif(100)
RandMachServ2 = (-1/0.8488159)*log(1-rMach2,exp(1))
