setwd("~/R/Ecology")

library(ggplot2)

data <- read.csv("data.csv", header = T)



a <- aggregate(data = data, R1 ~ str, mean)
b <- aggregate(data = data, B1 ~ str, mean)
C <- merge(a,b, by = 'str')

plot(c)
