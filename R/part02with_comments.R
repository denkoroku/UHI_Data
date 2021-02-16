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
  mutate(storms, across(everything(), as.character))
  
  #using across() and where()
  mutate(storms, across(where(is.double), as.character ))

#Exercise 3
  #find the year with the largest number of storms
  count(storms, year) %>%
    arrange(desc(n))
  
# Comment AD: As I said in Monday's class this isn't quite what we're looking for
# as this also counts the length of each storm.

  storms %>%
    select(name, year) %>%
    distinct() %>% # reduce just to names and years and then count
    count(year, sort = TRUE)
  
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
      
      
      
# Comment AD: I haven't seen this package before but it looks like a nice 
# solution to adding text that would otherwise require some data summary
# how about this?
# adding linetypes helps the reader follow the two storms and moving the 
# colour to a single layer allows the lines to join up
      ggplot(all_1976, aes(x = wind, y = pressure, linetype = name)) +
        geom_path(colour = "grey") +
        geom_point(aes(colour = category), size = 2) +
        # from reading http://directlabels.r-forge.r-project.org/docs/index.html
        # either first points or maxvar points seem to work the best
        # it isn't perfect because we're using geom_path() rather than geom_line()
        # so the ordering isn't quite as might be expected 
        geom_dl(aes(label = name), method = list("first.points")) +
        xlim(c(10, 100)) +
        scale_linetype_discrete(guide = FALSE)

        
          
        
  
      
  