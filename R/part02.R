library(tidyverse)


#Exercise 1
  #selecting only numerical values
  select(storms, where(is.numeric))
  
  #selecting only string values
  select(storms, where(is.character))
  
  #selecting by what column name contains
  select(storms, contains("s"))


#Exercise 2
  #workingwith across() and everything()
  #changes the datatype of all columns to characters
  mutate(storms, across(everything(), as.character))
  
  #using across() and where()
  #changes the datatype of doubles to characters
  mutate(storms, across(where(is.double), as.character ))

#Exercise 3
  #find the year with the largest number of storms
  count(storms, year) %>%
    arrange(desc(n))
  
#Exercise 4
  #filter() so only a storm of your choice is shown
  gloria <- storms %>%
    filter( name == "Gloria" & year == 1976) %>%
  
  #select() just the name, wind, pressure and category columns;
    select(name, wind, pressure, category)
  
  #plot the wind on the x-axis and the pressure on the y-axis
  gloria_plot <- ggplot(gloria, aes(x = wind, y = pressure, colour = name)) +
    geom_point() +
    geom_path()
    
  #adding more storms to this plot and colouring by category
  #method of using directlabels package from https://stackoverflow.com/questions/29357612/plot-labels-at-ends-of-lines
  library(directlabels)
    all_1976 <- filter(storms, year == 1976)
    
      ggplot(all_1976, aes(x = wind, y = pressure, colour = category)) +
      geom_point() +
      geom_path() +
        
      #can't make this work how I wanted :(
      geom_dl(aes(label = name), method = list("last.points"))
      
      
          
        
  
      
  