library(tidyverse)
library(lubridate)

#Exercise 1
  #load the dataset
  reg_exp_file <- read_csv("data/reg_exp_test.csv")

  #find the rows in col3 that have a space
  filter(reg_exp_file, str_detect(col3, "[[:space:]]"))

  #find those rows that contain at least two letters
  filter(reg_exp_file, str_detect(col1, "[A-z]{2,}"))
  
  #find those rows that start with two letters
  filter(reg_exp_file, str_detect(col2, "^[A-z]{2}"))

  #find those rows with more than three numbers
  filter(reg_exp_file, str_detect(col4, "[0-9]{4,}"))
  
#Exercise 2
  #Read in the nairn_raw.tsv file
  nairn_data <- read_tsv("data/nairn_raw.tsv")
  
#Exercise 3
  #clean and tidy the dataset
  
  #save the dataset without asterisks
  no_asteriks <- str_replace(nairn_data, across(everything(), "\\*", ""))
  no_asteriks
  
  #change chr datatype columns  to double
  mutate(no_asteriks, across(where(is.character), as.double))
  no_asteriks  
  
  #change x8 colum to "is_provisional"
  rename(nairn_data, is_provisional = X8)
    #change NA to false using replace_na()
    replace_na(nairn_data$is_provisional, replace = FALSE)
    #change provisional to TRUE
    mutate(nairn_data$is_provisional, Provisional = TRUE)

#Exercise 4
  #Create a date column using the ymd()
    
  
  
#Exercise 5
  #plot the data over time to see if any trends can be established
  