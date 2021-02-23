library(tidyverse)

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
  