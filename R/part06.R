##Exercise 1
  #Write a function that takes in two vectors and subtracts the first from the second.
  vector_subtract = function(vector1, vector2){
    if(!is.vector(vector1) || !is.vector(vector2)){
      stop("You need to enter two vectors")
    }
    else{
      answer = vector1 - vector2
      return(answer)
    }
  }
  
  #making vectors to check it works
  vec2 = seq(from = 1, to = 5, by = 2)
  vec1 = seq(from = 7, to = 11, by = 2)
  test3 = "This is a random sentence"
  
  vector_subtract(vec1,vec2)
  vector_subtract(vec1,test3)

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
#I can't see why the error check works in the second part but not in first :(

#Exercise 3 - source files
#Taking the work on reading in and cleaning weather data that we have already
  #completed on the nairn_raw.tsv dataset in part 4 complete the following tasks.
  
#Rewrite the cleaning steps as a function (or functions)
  #see read_and_clean_weather_data file
  
 
#Having tested them, put them it into a separate .R file and use source() to read it in.
#Apply the scripts to dunstaffnage_raw.tsv.
#Do the functions work on both datasets? How about the other weather datasets?