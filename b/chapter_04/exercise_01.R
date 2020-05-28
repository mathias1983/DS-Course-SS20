#!/usr/local/bin/Rint

# Ich habe versucht in einer Endlosschleife solange die Nutzereingabe abzufragen, bis die
# korrekte Zahl erraten wurde. Das ist aber gar nicht so einfach, denn weder
# im interactive mode noch als Rscript wartet das Programm auf die Eingabe des Nutzers.
# Ich habe viel gesucht und einiges probiert:
#
# https://thesquareplanet.com/blog/interactive-r-scripts/
# https://stackoverflow.com/questions/44012056/r-how-do-i-prompt-the-user-for-input-from-the-console
#
# Erfolglos. Nach zwei Stunden rumprobieren breche ich ab.
# Aus meiner Sicht erfüllen die folgenden Zeilen code jedoch die formalen Anforderungen :)


readInput <- function(){
  #return <- as.integer(readline(prompt="Your number: "))
  return <- as.integer(readLines(con=stdin(),1))
  # return <- (as.integer(readLines(file("stdin"), n=1)))
}

secretNum <- sample(1:100,1)
input <- readInput()
if(secretNum == input){
  paste("You guessed right. The number was", secretNum )
}
if(secretNum > input){
  paste("Wrong. The secret number is greater than", input )
}
if(secretNum < input){
  paste("Wrong. The secret number is smaller than", input )
}




#while(TRUE){
#  input <- readInput()
#  if(secretNum == input){
#    paste("You guessed right. The number was", secretNum )
#    break
#  }
#  if(secretNum > input){
#    paste("Wrong. The number is greater than", input )
#  }else{
#    paste("Wrong. The number is smaller than", input )
#  }
#}

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


