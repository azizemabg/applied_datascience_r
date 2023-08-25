# DATA VISUALIZATION IN R------------------------------------------------------




library(dplyr)
library(ggplot2)
library(tidyr)
library(sjPlot)

# simple plot
qplot(mtcars$cyl, geom = "bar", 
      fill = "blue")

# ggplot----------------------------------------
mtcars %>% 
  ggplot(aes(x = hp,)) +
  geom_histogram(breaks = seq(40, 350, by = 25), 
                 color = I("white"),
                 aes(fill = ..count..))
# mtcars dataset
head(mtcars)
summary(mtcars)

mtcars %>% 
  ggplot(aes(x = cyl))+
  geom_bar(fill = "orange", color = "white")+
  theme_bw()

mtcars %>%
  ggplot(aes(x = mpg)) +
  geom_histogram(fill = "gray", color = "red", bins = 30, binwidth = 3) +
  scale_x_continuous(breaks = seq(5, 35, by = 5)) +
  theme_classic()

head(mtcars, 3)

mtcars %>% 
  ggplot(aes(x = 1, y = sort(carb), fill = sort(carb))) +
  geom_bar(stat = "identity")+
  coord_polar(theta = "y") +
  xlab("Carb") +
  theme(axis.line = element_blank(), 
        axis.text.x = element_blank(), 
        axis.text.y = element_blank(),
        axis.ticks = element_blank(), 
        axis.title.y = element_blank(), 
        panel.background = element_blank()) +
  labs(y = "Carburetors")

# Scatter plot---------------------------

mtcars %>% 
  ggplot(aes(x = mpg, y = wt)) +
  geom_point() +
  theme_

