#!/bin/bash

echo "===================================="
echo "     Welcome to Drink Selector      "
echo "===================================="
echo "Please choose a drink:"
echo "1) Tea"
echo "2) Coffee"
echo "3) Juice"
echo "4) Water"
echo "5) Soda"
echo "------------------------------------"

read -p "Enter your choice (1-5): " choice

case $choice in
    1)
        read -p "What kind of tea? (Green/Black/Herbal): " tea_type
        echo "Great choice! Enjoy your $tea_type tea!"
        ;;
    2)
        read -p "Do you want sugar? (yes/no): " sugar
        echo "Nice! Your coffee with $sugar sugar will be ready shortly."
        ;;
    3)
        read -p "What flavor of juice? (Orange/Apple/Mango): " juice_flavor
        echo "Refreshing! Enjoy your $juice_flavor juice!"
        ;;
    4)
        echo "Simple and healthy choice! Stay hydrated with water!"
        ;;
    5)
        echo "Enjoy your chilled soda!"
        ;;
    *)
        echo "Invalid choice. Please run the script again and select a number between 1 and 5."
        ;;
esac
