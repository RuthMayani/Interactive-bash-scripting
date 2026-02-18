#!/bin/bash

while true; do
clear
echo "======================================"
echo "  Welcome to the Car Selection Menu "
echo "======================================"
echo
echo "Please choose one of the following cars:"
echo
echo "1) Tesla"
echo "2) BMW"
echo "3) Toyota"
echo "4) Ford"
echo "5) Honda"
echo "0) Exit"
echo

read -p "Enter your choice [number or name]: " choice
echo

# Normalize input to lowercase
choice=$(echo "$choice" | tr '[:upper:]' '[:lower:]')

case $choice in

1|"tesla")
    echo "You chose Tesla!"
    echo "Great choice. Enjoy the innovation and electric power!"
    ;;

2|"bmw")
    echo "You chose BMW!"
    echo "Excellent choice. Experience luxury and performance!"
    ;;

3|"toyota")
    echo "You chose Toyota!"
    echo "Smart decision. Reliable and fuel-efficient!"
    ;;

4|"ford")
    echo "You chose Ford!"
    echo "Nice choice. Built tough and dependable!"
    ;;

5|"honda")
    echo "You chose Honda!"
    echo "Great pick. Known for durability and comfort!"
    ;;

0|"exit"|"quit")
    echo "Thanks for visiting the Car Selection Menu. Goodbye!"
    echo
    break
    ;;

*)
    echo "Invalid selection. Please choose from the listed options."
    ;;

esac

echo
read -p "Press Enter to return to the main menu..."

done

