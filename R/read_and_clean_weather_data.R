
#Rewrite the reading in of the dataset and cleaning into a function that takes a filepath
library(tidyverse)

the_data = df[FALSE,]
#function to read in the data
read_in_data = function(path_to_file){
  the_data <<- read_tsv(path_to_file)
  return()
}

#function to clean the data
clean_data = function(dataset){
  #remove stars
  the_clean_data <- mutate(dataset, across(where(is.character),
                                             str_remove_all, pattern = "\\*"))%>%
    
  #remove dashes
  mutate(across(where(is.character), str_replace,
                  pattern = "---",
                  replacement = NA_character_))%>%
    
  #remove spaces
  mutate(across(where(is.character),str_remove_all,
                  pattern = " "))
  
  #remove last column
  the_clean_data <-select( the_clean_data, yyyy:`sun (hours)`)%>%
    
  #change chr datatype columns to double
  mutate(across(where(is.character), as.numeric))
}

#testing
read_in_data("data/nairn_raw.tsv")
clean_data(the_data)


