#!/bin/bash

display_menu() {
    whiptail --title "CSV Data Analysis Tool" --menu "Select an option:" 15 60 2 \
    "1" "Input CSV file" \
    "2" "Analyze CSV file" \
    3>&1 1>&2 2>&3
}

while true; do
    choice=$(display_menu)
    
    case $choice in
        1) ./input_csv.sh ;;
        2) ./analysis_functions.sh ;;
        *) exit ;;
    esac
done
