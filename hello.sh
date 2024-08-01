#!/bin/bash
echo "hello world !"

echo "BASH NAME : "$BASH
echo "BASH VERSION :"$BASH_VERSION
echo "HOME DIRECTORY :"$HOME
echo "CURRENT WORKING DIRECTORY :"$PWD


# Variables
name="John Doe"
age=30


echo "My name is $name and I am $age years old."

#reading name from a user
# echo "Please enter your username :"
# read username 

# echo "Please enter your password :"
# read -s password

# echo "Welcome $username! you have sucessfully logged into your acount"


# Arrays
my_array=(apple banana orange)
echo "First element of array: ${my_array[0]}"


# if statement
echo " Please enter your studentname"
read studentUserName

echo "Please enter your student password"
read -s 
if [[ "$studentUserName" = "student1" || $REPLY = "1234" ]] 
then
echo "hello !"$studentUserName "you have sucessfully logged into your student account"
else
echo "Invalid credentials"
fi

# determining a file exist or not
 echo -e "Determine the path of the file: \c"
read file_name

# Check if the file exists
if [ -f "$file_name" ]; then
    echo "The file exists."
else
    echo "The file does not exist."
    echo "Creating new file UserNames.txt..."
    touch UserNames.txt 
    echo "Ben, Kevin, Kafui, Travis" > UserNames.txt
    echo "Usernames have been added to UserNames.txt"
    echo "File created at: $PWD/UserNames.txt"
    echo "File created successfully."
fi

echo -e "Do you have bettercap installed? (yes/no): \c"
read bettercap

# Handle bettercap installation
if [ "$bettercap" = "yes" ]; then
    echo "Okay, bettercap is already installed."
elif [ "$bettercap" = "no" ]; then
    echo "Installing Bettercap................................................................"
    git clone https://github.com/bettercap/bettercap.git
    echo "Bettercap has been installed successfully."

    echo "cd into the directory where the Bettercap has been installed and then run 
    the following command. Just type bettercap and then run it by hitting on enter"
else
    echo "Invalid input. Please enter 'yes' or 'no'."
fi