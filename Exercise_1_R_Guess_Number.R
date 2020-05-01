playLoop <- TRUE
while(playLoop) {
  # Start game --------
  number <- sample(0:100, 1) # Number between 0 - 100
  print(number)
  print("Guess a number in between 0 and 100. (Only integers)")
  ng <- readline(prompt="Your guess: ")
  as.integer(ng)
  
  # Loop till the correct number ---------
  while(number != ng) {
    ng <- readline(prompt="Wrong number. Try again: ")
    as.integer(ng)
  }
  print("Correct Number awesome!")
  
  # Play Again -------
  print("Do you want to play again? Enter 'y' for yes or another key to exit the game")
  input <- readline(prompt="Play again? ")
  playLoop <- ifelse(input=="y", TRUE, FALSE)
}
