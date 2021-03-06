library(stringr)

#to get a nice dataset to work with
library (ggplot2)

#Exercise 1.

  #making some variables to use later
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

  number_of_entries(c(1:5))
  number_of_entries(my_vector)
  
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
  
  #Function with different outputs for each datatype
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
    
    #this part may be redundant since everything seems to be a vector in R!
    else{
      print("item is not a data frame, list or vector")
    }
  }
  
  find_datatype(my_vector)
  find_datatype(my_list)
  find_datatype(my_df)
  
  #Is there anything that is not a vecor in R?
  find_datatype(1)
  find_datatype("bananas")
 
  
#Exercise 2

  #Loop through a vector and print out the cumulative total
  
  find_cumulative_total = function(vector){
    total = 0
    for (i in c(1:length(vector))){
      total = total + vector[i]
      print(total)
    }
  }
  
  find_cumulative_total(my_vector)
  
  #Create a for loop that adds two vectors (of the same length) together
  add_vectors = function(v1,v2){
    
    #initialise a new vector (not sure how to do that in R but this works)
    new_vector = c()
    
    #loop through each element in the vectors adding them
    for (i in (1:length(v1))){
      total = v1[i] + v2[i]
      
    #add the total to the new vector in correct position
    new_vector[i] = total
    print(new_vector)
    }
  }
  
  add_vectors(c(1:10), c(11:20))
  
  
#Challenge: use a while loop to create a vector of the first 100 prime numbers.
  
  #get some numbers
  my_nums = c(1:1000)
  
  sum_100_primes = function(nums){
    
    #Function to find prime numbers 
    is_prime = function(num) {
      
      #2 is a special case and is prime
      if (num == 2) {
        return(TRUE)
        
      #if divisible by a number its not prime
      } else if (any(num %% 2:(num-1) == 0)){
        return(FALSE)
        
      #it must be prime
      } else { 
        return(TRUE)
      }
    }

    #set counters to initial values
    primes_count = 0
    i = 1
    total = 0
  
    #make the while loop until there are 100 prime numbers
    while (primes_count < 100){
      if(is_prime(nums[i])){
        total = total + nums[i]
        primes_count = primes_count + 1
      }
      i = i + 1
    }
    return(total)
  }
  
  sum_100_primes(my_nums)
  #How do you know you’ll be finished?
  #I googled what is the sum of the first 100 prime numbers- my answer was correct
  
