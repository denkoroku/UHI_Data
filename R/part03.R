library(tidyverse)

#Exercise 1
  #Practice using read_csv()
  re_data <- read_csv("data/reg_exp_test.csv")
  re_data
  
  #Practice using read_tsv()
  braemar_data <- read_tsv("data/braemar_raw.tsv")
  braemar_data
  
#Exercise 2
  #writing braemar_data to a file 
  write_csv (braemar_data, "data/braemar.csv")
  
  #and reading it back in again
  braemar2_data<- read_csv("data/braemar.csv")
  braemar2_data
  
  #writing and reading storms data
  library(readxl)
  
  #writing storms data to file
  write_csv(storms, "data/storms.csv")
  
  #reading back in the xlsx file
  #glad this worked with mac numbers as I don't have excel
  storms3_data <- read_excel("data/storms.xlsx")
  storms3_data
  
#Exercise 3
  #From the storms.csv file, change the status column into a factor.
  storms4 <- read_csv("data/storms.csv")
  storms4$status<-as_factor(storms4$status)
  
  #Here are the levels.Are they in the correct order? (I don't know the correct order!)
    levels(storms4$status)
    
  #Use this variable with geom_bar()
  ggplot(storms4, aes(x=status))+
    geom_bar()
    
  #Using fct_rev() to reverse the order of the factors.
  ggplot(storms4, aes(x=fct_rev(status)))+
    geom_bar()
    
#Exercise 4
  #read in the student_marks.csv file
  marks <- read_csv("data/student_marks.csv")
  marks
  
  #Convert it to long format 
  marks_long <- pivot_longer(marks,
                             cols = maths:economics,
                             names_to = "subject",
                             values_to = "mark"
                             )
  marks_long
 
  #plot the results for each student with a different colour for each subject
    ggplot(marks_long, aes(x = student, y = mark, fill = subject))+
    geom_col()
    
  #One chart per student
      ggplot(marks_long, aes(x = subject, y = mark, fill = subject))+
      geom_col()+
      facet_wrap(vars(student))

  
    
  