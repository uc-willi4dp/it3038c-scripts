#! /bin/bash
#This script will email us our user, IO, hostname and todays's date
emailaddress=willi4dp@mail.uc.edu
today=$(date +"%d-%m-%Y")
ip=$(ip a | grep 'dynamic ens192' | awk '{print $2}')
content="User $User from $ip on $today running machine type of $MACHTYPE with hostname $HOSTNAME"
mail -s "IT3038C Linux IP" $emailaddress <<< $(echo -e $content)