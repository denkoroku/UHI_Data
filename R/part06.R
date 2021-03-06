##Exercise 1
  #Write a function that takes in two vectors and subtracts the first from the second.
  vector_subtract = function(vector1, vector2){
    answer = vector1 - vector2
    return(answer)
  }
  
  #making vectors to check it works
  vec2 = seq(from = 1, to = 5, by = 2)
  vec1 = seq(from = 7, to = 11, by = 2)
  
  vector_subtract(vec1,vec2)

  #A function that takes in a vector of characters and sticks them together 
  make_word_or_sentence = function(vector, word_or_sentence){
    #check the user input is ok
    if(word_or_sentence != "word" && word_or_sentence != "sentence" ){
      stop("You need to specify word or sentence")
    }
    
    #return a word if "word" is enterd
    if(word_or_sentence == "word"){
      answer = paste0(vector, collapse = "")
      return(answer)
    }
    
    #return a sentence if "sentence"is entered
    else if (word_or_sentence == "sentence"){
      answer = paste0(vector, collapse = " ")
      return(answer)
    }
    
  }
  
  #testing everything works
  testvec = c("C","a","t")
  my_words = c("These", "are", "my", "words")
  make_word_or_sentence(testvec, "word")
  make_word_or_sentence(my_words, "sentence")
  make_word_or_sentence(my_words, "banana")




#Exercise 2
#Rewrite the functions from Exercise 1 to include checks (and either errors or warnings) for the inputs. These checks do not need to be comprehensive, it is just to get used to the idea of checking inputs/providing warnings - which is important if you end up writing code for others to use.

#Exercise 3 - source files
#Taking the work on reading in and cleaning weather data that we have already completed on the nairn_raw.tsv dataset in part 4 complete the following tasks. This is where we start to really use functions by taking something that worked on one dataset and applying it to a nearly identically formed one.

#Rewrite the cleaning steps as a function (or functions)
  #Rewrite the reading in of the dataset and cleaning into a function that takes a filepath
#Having tested them, put them it into a separate .R file and use source() to read it in.
#Apply the scripts to dunstaffnage_raw.tsv.
#Do the functions work on both datasets? How about the other weather datasets?