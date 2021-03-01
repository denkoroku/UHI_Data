#Exercise 1.

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
#it returns the number of columns

number_of_entries(diamonds)




  #Test whether something is a data frame. What happens when you give it a list?
  #Test whether something is a vector or a data frame. If it is a vector find its length. If it is a data frame find the number of rows and columns. What should you do if it is a list?
 #Exercise 2
#Write for loops to complete the following.

#Loop through a vector and print out the cumulative total as you are going through.
#Create a for loop that adds two vectors (of the same length) together.
#Challenge: This is optional and difficult. Instead of using a for loop, use a while loop to create a vector (remember you can append values) of the first 100 prime numbers. How do you know you’ll be finished?
  
  #Exercise 3 - Optional/Extension Questions
#Compare the performance of vectorised summation vs using a for() loop for vectors of length 1 thousand, 10 thousand and 100 thousand. Hint: Use system.time().
#Using a loop create the first 10 numbers in the Fibonnaci sequence. The sequence starts 0, 1 and then successive terms are constructed by adding the previous two terms together.
#Using the sequence you created in Q2, find the ratio of successive terms as the sequence increases. This should tend to the “divine ratio” or ϕ=1.618.
#Can you use a for loop to create a clock to print out the time every second for a minute using Sys.time()? Hint: Sys.sleep() might be very helpful.