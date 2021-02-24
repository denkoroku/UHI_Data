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
  
  #remove stars
  nairn_clean_data <- mutate(nairn_data, across(where(is.character),
                                    str_remove_all, pattern = "\\*"))%>%
  
  #remove dashes
  mutate(across(where(is.character), str_replace,
                                              pattern = "---",
                                              replacement = NA_character_))%>%
    
  #remove spaces
    mutate(across(where(is.character),str_remove_all,
                  pattern = " "))
                  
  #remove last column
  nairn_clean_data <-select( nairn_clean_data, yyyy:`sun (hours)`)%>%
  
  #change chr datatype columns  to double
  mutate(across(where(is.character), as.numeric))
  
  
#Exercise 4
  #Create a date column using the ymd()
  nairn_clean_data%>%
    mutate(date = make_date(yyyy, mm), .before = `tmin (degC)`)%>%
  
#Exercise 5
  #plot the data over time to see if any trends can be established
    ggplot(aes(x = date, y = `tmin (degC)`))+
    geom_smooth()
  