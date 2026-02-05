data("mtcars")
str(mtcars)

###Plotting examples in R
plot(mtcars$wt, mtcars$mpg,
     xlab = "Car Weight",
     ylab = "Miles per gallon",
     font.lab = 6,
     pch = 2)

#ggplotexample with built in data
ggplot(mtcars, aes(x = wt, y = mpg))+ 
  geom_point() + 
  geom_smooth(method = lm, se = FALSE) +
  xlab("Weight(tons)")+
  ylab("Miles per gallon")

###GGPlot2##
#Present within the package tidyverse.
#cheatsheet_Posit

library(ggplot2)
ggplot()

ggplot(mtcars, aes(x = wt, y = mpg)) +
  geom_smooth(method = lm, se = FALSE, color = "blue") +
  geom_point(aes(size = hp, color = hp))+
   xlab("Weight")+
  ylab("Miles per gallon") +
  scale_color_gradient(low = "green", high = "black")+
  scale_x_log10()+
  scale_y_continuous(labels= scales::percent)

#ggplot with categorical X and Numeric Y variables
bull.richness <- read.csv("Bull_richness.csv")
str(bull.richness)

#Boxplot Using ggplot
ggplot(bull.richness, aes(x = GrowthStage, y = richness, fill = Fungicide))+
  geom_boxplot()+
  geom_point(position = position_jitterdodge())+
  scale_fill_manual(values = c("orange", "blue"))

#bargraph Using ggplot with Se bars
ggplot(bull.richness, aes(x = GrowthStage, y = richness, fill = Fungicide)) +
  stat_summary(fun = mean, geom = "bar", position = "dodge") +
  stat_summary(fun.data = mean_se, geom = "errorbar", position = "dodge")

#Line graph  
ggplot(bull.richness, aes(x = GrowthStage, y = richness, group = Fungicide, color = Fungicide)) +
   stat_summary(fun = mean, geom = "line") +
  stat_summary(fun.data = mean_se, geom = "errorbar")

#Facetting- splitting of the data
ggplot(bull.richness, aes(x = GrowthStage, y = richness, group = Fungicide, color = Fungicide)) +
  stat_summary(fun = mean, geom = "line") +
  stat_summary(fun.data = mean_se, geom = "errorbar") +
  facet_wrap(~Treatment*Crop, scales = "free")



