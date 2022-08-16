#!/bin/bash
echo "let's try scripting again"
user_group=xx
if [ user_group == "bankyjay" ]
then  
  echo "configure the server"
elif [ user_group == "admin" ]
then
  echo "administer the server"
else
  echo "No permission to configure the server"
fi

 #passing a parmeter
echo "Input a parameter"
user_group=$1
if [ "$user_group" == "bankyjay" ]
then  
  echo "configure the server"
elif [ "$user_group" == "admin" ]
then
  echo "administer the server"
else
  echo "No permission to configure the server"
fi

#Reading user input
echo "Reading user input"
read -p "Please enter your password: " user_pwd
echo "thanks for your password" $user_pwd

echo "user $1"
echo "user $2"
echo "The parameters provided $*"
echo "THe numbers of parameters provided $#"