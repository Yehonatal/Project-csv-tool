#!/bin/bash

input_csv_file() {
    csv_file=$(whiptail --title "Input CSV File" --inputbox "Please enter the path to your CSV file:" 10 60 3>&1 1>&2 2>&3)
    
    if [[ -f "$csv_file" && -r "$csv_file" ]]; then
        whiptail --title "Success" --msgbox "CSV file is valid and readable. Copied to data folder." 8 40
        cp "$csv_file" data/
    else
        whiptail --title "Error" --msgbox "File does not exist or is not readable. Please try again." 8 40
    fi
}

input_csv_file
