#!/bin/bash -x
#Discription:Gambling Simulation As Per UseCases
#Author:Hrishikesh M Bodake
#Since:March 7 2020 Saturday

stakes=100
day=0
game=0
isWon=1
winningGoal=150
loosingLimit=50
noOfBets=5
#UC2:As calculative gambler if won or loose 50% of stakes it will be end of day
function gamble(){
	while [[ $stakes -gt $loosingLimit && $stakes -lt $winningGoal ]]
	do
		if [[ $((RANDOM%2)) -eq $isWon ]]
		then
			stakes=$(($stakes+1))
		else
			stakes=$(($stakes-1))
		fi
			((game++))
	done
}
gamble
