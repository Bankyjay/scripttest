#!/bin/bash
#Enables you to execute a set of commands repeatedly
#types of loops
#while loop
#for loop
#until loop
#select loop

# For Loop
# -Operates on lists of items
# -Repeats a set of commands for every item on the list

echo "all parameters: $*"
echo "number of parameters $#"

for  parameters in $*
  do
    if [ -f "$parameters" ]
    then
      echo "excuting scripts in the config folder"
      cat test.sh
    fi
    echo " $parameters "
  done

# While loop
# -Execute as set of commands repeated until some condition is matched
# *e.g ping untiL a service is available , monitors some endpoint maybe runs every 10sec, validate some servics are available.

sum=0
while true
  do
    read -p "enter a score " score
    
    if [ "$score" == "q" ]
    then
      break
    fi
    
    sum=$(($sum+$score))
    echo "total score: $sum"
  done

# functions: Enable you to breakdown the overall fucntionality of a script into smaller, logical code blocks.
function score_sum {
  sum=10
  while true
  do
    read -p "enter an integer: " integer

    if [[ $integer == q ]]
    then 
      break
    fi

    sum=$(($sum-$integer))
    echo "total score: $sum"
  done
}
score_sum

#passing a parameter to a function

function create_file() {
  file_name=$1
  shell_script=$2
  touch $file_name
  echo "file $file_name created successfully "

  if [ "$shell_script" = true ]
  then
    chmod u+x $file_name
    echo "added execute permission "
  fi
}

#create_file text.txt

#create_file shell_script.sh true
#create_file lowkey.yml

function sum() {
  total=$(($1+$2))
  return $total
}

sum 2 10
result=$? 

echo "sum of 2 and 10 is  $result "