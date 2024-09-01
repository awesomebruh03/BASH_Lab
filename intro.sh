#Create a bash script named Intro.sh
#2. Ask the user for his/her name by echoing “What is your name?”
#3. Store the name in a variable
#4. Print the stored variable in the following way:
#Name: John Doe
#5. Similarly ask for Intake number, section, id separately.

#!/bin/bash


echo "What is your name?"
read name


echo "What is your intake number?"
read intake_number


echo "What is your section?"
read section


echo "What is your ID?"
read id


echo "Name: $name"
echo "Intake Number: $intake_number"
echo "Section: $section"
echo "ID: $id"