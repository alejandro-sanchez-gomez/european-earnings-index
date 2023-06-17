
if(!require("readxl")) install.packages("readxl")
if(!require("dplyr")) install.packages("dplyr")
if(!require("ggplot2")) install.packages("ggplot2")

library(readxl)
library(dplyr)
library(ggplot2)

data <- read_excel("D:/Projects/european-average-earnings-index/Data/data.xlsx")

pli_by_country <- 
  select(data, c("country", "date", "price_level_index")) %>% 
  filter(data$country == "Austria" & data$date != 2022) 

#qplot(x = pli_by_country$date, y = pli_by_country$price_level_index, geom="line")

#SMA
if(!require("smooth")) install.packages("smooth")
library(smooth)
help(sma)
model <- sma(pli_by_country$price_level_index, order=4, h=5)
plot(forecast(model, h=5, interval="empirical"))

if(!require("forecast")) install.packages("forecast")
library(forecast)
help(ma)
model2 <- ma(pli_by_country$price_level_index, order=4, centre=FALSE)
fmodel2 <- forecast(model2, h=5)
plot(fmodel2)





