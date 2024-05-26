#!/bin/bash

display_menu() {
    whiptail --title "CSV Data Analysis Tool" --menu "Select an option:" 15 60 3 \
    "1" "Input CSV file" \
    "2" "Analyze CSV file" \
    "3" "Exit" \
    3>&1 1>&2 2>&3
}

while true; do
    choice=$(display_menu)
    
    case $choice in
        1) ./input_csv.sh ;;
        2) ./analysis_functions.sh ;;
        3) whiptail --title "Exiting" --msgbox "Exiting CSV Data Analysis Tool." 8 40; exit ;;
        *) whiptail --title "Invalid Choice" --msgbox "Please select a valid option." 8 40 ;;
    esac
done
