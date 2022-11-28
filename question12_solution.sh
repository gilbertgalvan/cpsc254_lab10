#!/usr/bin/env bash
answer=1
while [ $answer -ne 0 ]
do
    echo "0 Exit"
    echo "1 Introduction"
    echo "2 display files"
    echo "3 credits"    
    read answer
    if (($answer == 1)); then
        clear
        echo "Our website is called 'TicketComp', it is a website that compare's the prices of 
        certain events from different websites, much like google flight's gives you different
        prices for the same flight, this website's intent is to make sure you get the lowest
        price among different websites like Ticketmaster or SeatGeek"
    elif (($answer == 2)); then
        clear
        cd ..
        cd proj/TicketComp
        ls
        cd images
        ls
    elif (($answer == 3)); then
        clear
        echo "Project Contributors: Andrew Delos Reyes, Gilbert Galvan, Rodrigo Onate"
        echo "Github: https://github.com/adrxone/TicketComp"
        echo "Class: CPSC 254"
        echo "Professor: Ming Chen"
    elif (($answer == 0)); then
        clear
        break
    else 
        clear
        echo "not a valid input"
    fi

done