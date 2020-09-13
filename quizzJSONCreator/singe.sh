#!/bin/bash

echo "Question : " 
read question
echo "Réponse 1 : "
read answer1
echo "Réponse 2 : "
read answer2
echo "Réponse 3 : "
read answer3
echo "Numéro de la bonne réponse : "
read correctAnswer

# To use it install : https://github.com/jpmens/jo
# It's a JSON creator
json=`jo -p question="$question" answers[]="$answer1" answers[]="$answer2" answers[]="$answer3" correct=$correctAnswer selectedAnswer=null error=false`

echo -e "\n\e[36m$json"

# Change PATH to your own file path
echo "$json,"  >> /home/hakamate-thomas/Documents/forDev/question.txt   
echo -e "\n\\e[33mLa question est ajoutée !"
