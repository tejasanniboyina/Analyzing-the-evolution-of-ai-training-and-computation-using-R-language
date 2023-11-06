#READING DETAILS FROM .csv FILE

ai_data<-read.table("C:/RProject/ai-training-computation.csv",
header=TRUE,sep=",")
head(ai_data)
summary(ai_data)
any(is.na(ai_data))

#DATA VISUALIZATION

library(forecast)
ai_time_series<-ts(ai_data$Trainingcompute,frequency=7)
ai_forecast<-forecast(auto.arima(ai_time_series),h=30)

plot(ai_data$year)

hist(ai_data$year)
boxplot(ai_data$year)

#VISUALIZATION GGPLOT
library(ggplot2)
ggplot(ai_data,aes(Trainingcompute,year))+geom_line()+
labs(title="ai training over time",x="Trainingcompute",y="year")


