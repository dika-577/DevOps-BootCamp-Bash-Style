#!/bin/bash

echo -e "\nNumberJack\n"
ch=0
while [ "$ch" != "3" ]
do
    echo "
         PLAY : Hit 1 and enter.
         HELP : Hit 2 and enter.
         EXIT : Hit 3 and enter.
         "
    read -r -p "Enter your choice :" ch 
    if [ "$ch" -eq 1 ]; then
        x=0 ;c=0 ;p=0
        read -r -p "Enter any number between 0 and 9 :" c 
    fi
    while [ "$c" != "0" ]
    do
        x=11 
        r=$(shuf -i 0-9 -n 10)
        echo "$r"
       break
    done 
    for i in {1..10}; do
        a[$i]=$i
        echo -e "${a[*]} " 
    done
    read -r -t 5 -p "Enter the index of your number: " p
    echo "$?"
 #   echo "$r[$(($x-1))]"
    echo "$c -1"
    echo "Dika"
    echo "$r"
    if [[ "$?" -gt 128 ]]; then
        c=1
    fi
    if [ "${r[x-1]}" -eq "$p" ]; then 
        echo "Great"
        p=$((p+1))
    else
        c=1
    fi
    if [ "$ch" -eq 2 ]; then
        echo "HELP: INSTRUCTIONS TO PLAY THE GAME."
    fi
    if [ "$c" -eq 1 ]; then
        echo -e "\nGAME OVER\n"
        echo "You scored $p points"
    fi
done
