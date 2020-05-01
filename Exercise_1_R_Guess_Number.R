playLoop <- TRUE
while(playLoop) {
  # Start game --------
  number <- sample(0:100, 1) # Number between 0 - 100
  print("Guess a number in between 0 and 100. (Only integers)")
  ng <- readline(prompt="Your guess: ")
  ng <- as.integer(ng)
  
  # Loop till the correct number ---------
  while(number != ng) {
    print("Wrong number!")
    if(ng < number) {
      print("Hint: Number is higher")
    } 
    else {
      print("Hint: Number is lower")
    }
    ng <- readline(prompt="Try again: ")
    ng <- as.integer(ng)
  }
  print("Correct Number awesome!")
  
  # Play Again -------
  print("Do you want to play again? Enter 'y' for yes or another key to exit the game")
  input <- readline(prompt="Play again? ")
  playLoop <- ifelse(input=="y", TRUE, FALSE)
}
