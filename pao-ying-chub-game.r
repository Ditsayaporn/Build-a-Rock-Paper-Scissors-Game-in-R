## Pao Ying Chub
## User play game untill type "quit" to stop game
## and then summarize result (win, lose, tie)

## core code block
play_game <- function(){
  print("Welcome to the Rock–paper–scissors Game!")
  choices <- c("rock", "paper", "scissors")
  count <- 0; user_win <- 0; comp_win <- 0; tie <- 0 # setup variable
  
  while (TRUE) {
    # user choose one choice
    user_choice <- readline("Please choose one option: paper, scissors, rock or quit? : ")

    # user type quit then quit game and summarize result
    if (user_choice == "quit"){
      print("Thx for playing the game!")
      print(paste("count", count))
      print(paste("user_win", user_win))
      print(paste("comp_win", comp_win))
      print(paste("tie", tie))
      break
    }  

    # user type invalid choice
    if (!(user_choice %in% choices)) {
      print("invalid, please choose again"); next
    }

    # sample result from computer
    comp_choice <- sample(choices, 1)
    print(paste("User:", user_choice))
    print(paste("computer:", comp_choice))

    # condition
    if (user_choice == comp_choice){
      print("tie");
      tie <- tie + 1
      count <- count + 1
    } else if ((user_choice == "paper" && comp_choice == "rock") || (user_choice == "rock" && comp_choice == "scissors") || (user_choice == "scissors" && comp_choice == "paper")){
      print("You win!");
      user_win <- user_win + 1
      count <- count + 1
    } else {
      print("Computer Win!");
      comp_win <- comp_win + 1
      count <- count + 1
    }
   }
  }
