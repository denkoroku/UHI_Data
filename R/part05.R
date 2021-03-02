library(stringr)

#to get a nice dataset to work with
library (ggplot2)

#Exercise 1.

  my_df = (diamonds)
  my_list = as.list(diamonds)
  my_vector = c(1:12)

#Test whether a vector has more that 10 entries.
number_of_entries = function(vector){
  if(length(vector) > 10){
    print("more than 10 entries")
  }
  else if( length(vector)==10){
    print("exactly 10 entries")
  }
  else {print("less than 10 entries")
  }
}

number_of_entries(c(1:20))

#What happens when you give it a data frame?
number_of_entries(diamonds)
#it returns the number of columns



  #Test whether something is a data frame. 

  test_is_dataframe = function(item){
    if(is.data.frame(item)){
      print("Item is a data frame")
      return(TRUE)
    }
    else {
      print("item is not a data frame")
      return(FALSE)
    }
  }

  test_is_dataframe(my_df)
  
  #What happens when you give it a list?
  test_is_dataframe(my_list)
  #it prints "item is not a data frame"
  
  test_is_dataframe(my_vector)

  
  
  find_datatype = function(item){
    #Test whether something is a vector, a data frame or a list
    if(is.data.frame(item)){
      #If it is a data frame find the number of rows and columns
      rows = nrow(item)
      columns = ncol(item)
      str_glue("Item is a data frame with {rows} rows and {columns} columns")
    }
    #dealing with lists
    else if(is.list(item)){
      list_length = length(item)
      str_glue("Item is a list of length {list_length}")
    }
    
    #If it is a vector find its length
    else if(is.vector(item)){
        vector_length = length(item)
        str_glue("Item is a vector of length {vector_length}")
    }
    
    else{
      print("item is not a data frame, list or vector")
    }
  }
  
  find_datatype(my_vector)
  find_datatype(my_list)
  find_datatype(my_df)
  

#Exercise 2

  #Loop through a vector and print out the cumulative total as you are going through.
  #Create a for loop that adds two vectors (of the same length) together.
  #Challenge: This is optional and difficult. Instead of using a for loop, use a while loop to create a vector (remember you can append values) of the first 100 prime numbers. How do you know you’ll be finished?
  
  #Exercise 3 - Optional/Extension Questions
#Compare the performance of vectorised summation vs using a for() loop for vectors of length 1 thousand, 10 thousand and 100 thousand. Hint: Use system.time().
#Using a loop create the first 10 numbers in the Fibonnaci sequence. The sequence starts 0, 1 and then successive terms are constructed by adding the previous two terms together.
#Using the sequence you created in Q2, find the ratio of successive terms as the sequence increases. This should tend to the “divine ratio” or ϕ=1.618.
#Can you use a for loop to create a clock to print out the time every second for a minute using Sys.time()? Hint: Sys.sleep() might be very helpful.