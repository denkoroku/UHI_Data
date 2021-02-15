# load packages
library(ggplot2)
library(dplyr) # we'll need this for Exercise 2
library(nycflights13) # we'll need this for Exercise 3
library(patchwork) # we'll need this for Exercise 4

# our first plot
ggplot(diamonds, aes(x = carat, y = price)) +
  geom_point()

# EXERCISE 1 Create a boxplot of price for each type of cut in the diamonds dataset
  ggplot(diamonds, aes (x = cut, y = price))+
  geom_boxplot(outlier.shape = NA)

  # picking one year to reduce the number of storms in storms dataset from dplyr
  storms = filter(storms, year == 2015) # more on this in Part 2

  # create a plot 
  p1 <- ggplot(storms, aes(x = wind, y = pressure, colour = name)) +
  geom_point() +
  geom_path()

#EXERCISE 2 experimenting with different colour palettes using scale_colour_*() 
  #black and white
  p1 + scale_colour_grey() + theme_bw()
  
  #green blue yellow 
  p1 +  scale_colour_viridis_d()
  
  #adjusting luminosity and chroma
  p1 + scale_colour_hue(l = 50, c = 190)
  
  #all oranges
  p1 + scale_colour_hue(h = c(0, 90))
  
#EXERCISE 3 plot a variable from flights dataset
  delays = filter(flights, dep_delay > 0 & dep_delay <300)
  
  p2<- ggplot(delays, aes(x = dep_delay, y = carrier))+
  geom_violin()
  p2

  #adding colour
  colour_p2<- ggplot(delays, aes(x = dep_delay, y = carrier, fill = carrier))+
    geom_violin()
  colour_p2+

  #adding title
    labs(title  = "Flight Delay by carrier")+
  
  #changing x label
    labs(x = "Departure delay(minutes)")+

#EXERCISE 4 create a plot with either facet_wrap() or the patchwork package
  p3<- ggplot(delays, aes(x = dep_delay))+
    geom_density()
  p3+
    labs(x = "Departure delay(minutes)")+
    facet_wrap(vars(carrier))
  
  

