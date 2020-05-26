#!/usr/local/bin/Rint
readInput <- function(){
  #input <- as.integer(readline(prompt="Your number: "))
  input <- as.integer(readLines(con=stdin(),1))
  return (as.integer(readLines(file("stdin"), n=1)))
}

secretNum <- sample(1:100,1)
while(TRUE){
  input <- readInput()
  if(secretNum == input){
    paste("You guessed right. The number was", secretNum )
    break
  }
  if(secretNum > input){
    paste("Wrong. The number is greater than", input )
  }else{
    paste("Wrong. The number is smaller than", input )
  }
}

#secretNum <- sample(1:100,1)
#userInput <- readInput()
#while(userInput != secretNum){
#  if(secretNum > userInput){
#    paste("Wrong. The number is greater than", userInput )
#  }else{
#    paste("Wrong. The number is smaller than", userInput )
#  }
#  userInput <- readInput()
#}
#paste("You guessed right. The number was", secretNum )


