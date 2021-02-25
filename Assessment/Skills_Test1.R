library(ggplot2)
ggplot(diamonds, aes(x = carat, y = price, colour = cut)) + 
  geom_point()