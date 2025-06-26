#!/bin/bash

echo " - stone"
echo " - paper"
echo " - scissors"

echo -n "Please enter your choice: " 
read player_choice


options=("stone" "paper" "scissors")
random_number=$((RANDOM % 3))
computer_choice=${options[$random_number]}


echo "You chose      : $player_choice"
echo "Computer chose : $computer_choice"


case $player_choice in
  stone)
    case $computer_choice in
      stone)
        echo "Result: It's a Draw!"
        ;;
      paper)
        echo "Result: You Lose! Paper covers Stone."
        ;;
      scissors)
        echo "Result: You Win! Stone breaks Scissors."
        ;;
    esac
    ;;
  paper)
    case $computer_choice in
      stone)
        echo "Result: You Win! Paper covers Stone."
        ;;
      paper)
        echo "Result: It's a Draw!"
        ;;
      scissors)
        echo "Result: You Lose! Scissors cut Paper."
        ;;
    esac
    ;;
  scissors)
    case $computer_choice in
      stone)
        echo "Result: You Lose! Stone breaks Scissors."
        ;;
      paper)
        echo "Result: You Win! Scissors cut Paper."
        ;;
      scissors)
        echo "Result: It's a Draw!"
        ;;
    esac
    ;;
  *)
    echo " type only: stone, paper, or scissors."
    ;;
esac

