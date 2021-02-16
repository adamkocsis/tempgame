#!/bin/bash
function praise {
	echo "Good job! You guessed right!"
}

echo "This is a guessing game."
echo "Guess, how many files are there in this folder?"

# declare an initial value, wrong for sure
echo "Enter a natural number: "
read given
  re='^[0-9]+$'
  while ! [[ $given =~ $re ]]
  do
  	echo "This is not a natural number... Try again!"
  	echo
  	echo "Enter a natural number: "
  	read given
  done	  
# count how many files there are inthe current folder
current=$(ls  | wc -l)

while [[ "$given" -ne "$current" ]]
do
	# error message is larger
	if [[ "$given" -gt "$current" ]]
	then
	    echo "Your guess was too high."
	else
		echo "Your guess was too low."
	fi
	# ask the user to enter another one
	echo "Guess again!"
	echo
	echo "Enter a natural number : "
	read given
  while ! [[ $given =~ $re ]]
  do
  	echo "This is not a natural number... Try again!"
  	echo
  	echo "Enter a natural number: "
  	read given
  done
done
# Prais the user!
praise
echo "The program will now exit."

