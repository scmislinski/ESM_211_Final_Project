# Setup and analysis of Bison data
# Christopher L Jerde
# Notes:
########################################

#Clear the R environment
rm(list = ls())

#Libraries needed
library(janitor) #cleans data and names
library(here) #allows for localized file directory
library(tidyverse) #makes R work nicely
library(forecast) # for ARIMA model

#YNP Home range size of bison (Gates et al. 2006)
HRS<-7720 #sq.mi.

data<-read_csv(here("ARIMA_Bison_Example","bison.csv")) |>
  mutate (density= bison/HRS) # density is bison per mi*mi

bison_ts<-ggplot(data, aes(x=year, y=density))+
  geom_point()+
  xlab("Year")+
  ylab("Bison density (N/mi*mi)")+
  xlim(1968, 2000)+
  ggtitle("Bison Population density in YNP (1970-97)")+
  theme_bw()
bison_ts
ggsave(here("plots","bison_ts_density.jpg"),bison_ts, dpi=400, width=5,height=3, unit="in")


#ARIMA
ts_bison_density<-ts(data$density) # puts data into time series

#model fit
model_arima <- auto.arima(ts_bison_density, ic="bic") #Returns best ARIMA model according to either AIC, AICc or BIC value. The function conducts a
# search over possible model within the order constraints provided.
summary(model_arima)

#model forecast
forecasted_values <- forecast::forecast(model_arima, h = 5) #forecast five more years
forecasted_values$mean #vector of expected values
plot(forecasted_values, main = "Population Density Forecast", xlab = "Time", ylab = "Population Density")







