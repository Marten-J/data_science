import random
import sys

# play one round with the given input of stone, scissors, paper
def play_round(player_input):
    cpu_input = random.randint(1,3)

    # Computer choice output
    if cpu_input == 1:
        print("Computer: Stone")
    elif cpu_input == 2:
        print("Computer: Scissors")
    else:
        print("Computer: Paper")

    # Game result output
    if cpu_input == player_input:
        print("Draw! Maybe next time")
    elif (cpu_input == 1 and player_input == 2) or (cpu_input == 2 and player_input == 3) or (cpu_input == 3 and player_input == 1):
        print("You lose!")
    else:
        print("You Win!")

# loop game as long as wanted
# stop game with entering exit, false or 0
def game_loop():
    run = True
    description = "Enter a number:\n1 -> Stone\n2 -> Scissors\n3 -> Paper\n\nor type 9 for exit: "
    end_game = "Thank you for playing!"
    while run:
        player_input = input(description)
        correct_input = False
        while not correct_input:
            if player_input == "1" or player_input == "2" or player_input == "3":
                play_round(int(player_input))
                correct_input = True
            elif player_input == "9" or player_input == "exit" or player_input == "false":
                print(end_game)
                run = False
                correct_input = True
            else:
                print("Wrong input! Please try again")

game_loop()