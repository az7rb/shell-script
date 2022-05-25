#!/bin/bash

# Twitter: az7rb
echo -e " watch -n 3600 ./dryEye.sh"
# Array tasks
arr[0]="Do 10 Pushups"
arr[1]="Take a walk"
arr[2]="Play A Chess Game"
arr[3]="Read 10 pages From A Book"
arr[4]="Respond to an email"
arr[5]="Make a call"
arr[6]="Feed the pets"
rand=$[$RANDOM % ${#arr[@]}]
# start time
echo $(date)
notify-send "${arr[$rand]}"
