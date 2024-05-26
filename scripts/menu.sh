#!/bin/bash

display_menu() {
    echo "Menu:"
    echo "1. Input CSV file"
    echo "2. Analyze CSV file"
    echo "3. Exit"
}

while true; do
    display_menu
    read -rp "Please select an option: " option
    
    case $option in
        1) ./input_csv.sh ;;
        2) ./analysis_functions.sh ;;
        3) echo "Exiting."; exit ;;
        *) echo "Invalid option. Please try again." ;;
    esac
done
