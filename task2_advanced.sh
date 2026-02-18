#!/bin/bash

# ==================================
# Global Variables
# ==================================

user_name=""
user_choice=""

# ==================================
# Function: show_menu
# Displays the drink options
# ==================================

show_menu() {
    echo "===================================="
    echo "        Drink Selection Menu        "
    echo "===================================="
    echo "1) Tea"
    echo "2) Coffee"
    echo "3) Juice"
    echo "4) Water"
    echo "5) Soda"
    echo "------------------------------------"
}

# ==================================
# Function: get_choice
# Captures user selection
# ==================================

get_choice() {
    read -p "Enter your choice (1-5): " user_choice
}

# ==================================
# Function: process_choice
# Handles logic using case statement
# ==================================

process_choice() {

    case $user_choice in
        1)
            local tea_type
            read -p "What kind of tea? (Green/Black/Herbal): " tea_type
            echo "Great choice, $user_name! Enjoy your $tea_type tea!"
            ;;
        2)
            local sugar_option
            read -p "Do you want sugar? (yes/no): " sugar_option
            echo "Nice choice, $user_name! Your coffee with $sugar_option sugar will be ready shortly."
            ;;
        3)
            local juice_flavor
            read -p "What flavor of juice? (Orange/Apple/Mango): " juice_flavor
            echo "Refreshing! Enjoy your $juice_flavor juice, $user_name!"
            ;;
        4)
            echo "Simple and healthy choice, $user_name! Stay hydrated with water!"
            ;;
        5)
            echo "Enjoy your chilled soda, $user_name!"
            ;;
        *)
            echo "Invalid choice. Please run the script again and select a number between 1 and 5."
            ;;
    esac
}

# ==================================
# Main Program Flow
# ==================================

read -p "Please enter your name: " user_name

show_menu
get_choice
process_choice
