library(tidyverse)
library(readxl)
library(nycflights13)

#this works because we are in working directory ie its a relative file path
student_marks <- read_csv("data/student_marks.csv")

#demonstrates parsing error- blank 
read_csv(readr_example("challenge.csv"))

read_csv(readr_example("challenge.csv", guess_max = 1001))

#specify column types in advance
read_csv(readr_example("challenge.csv"),
         #d is for double D is for dates
         col_types = c("dD"))

#more verbose way of doing samething
read_csv(readr_example("challenge.csv"),
         #d is for double D is for dates
         col_types = list(x = col_double(),
                          y = col_date()))