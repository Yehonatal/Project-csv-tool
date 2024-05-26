#!/bin/bash
# set -x
shopt -s nullglob

analyze_csv_file() {
    csv_files=(data/*.csv)
    
    if [ ${#csv_files[@]} -eq 0 ]; then
        whiptail --title "No CSV Files Found" --msgbox "No CSV files found in the data folder." 8 60
        return
    fi
    
    options=()
    for file in "${csv_files[@]}"; do
        options+=("$file" "")
    done
    
    selected_file=$(whiptail --title "Select CSV File" --menu "Choose a CSV file to analyze:" 20 60 10 "${options[@]}" 3>&1 1>&2 2>&3)
    exit_status=$?
    
    if [ $exit_status -eq 0 ]; then
        whiptail --title "Selected CSV File" --msgbox "You selected: $selected_file" 8 60
        
        row_count=$(wc -l < "$selected_file")
        column_count=$(head -n 1 "$selected_file" | tr ',' '\n' | wc -l)
        whiptail --title "Analysis Results" --msgbox "CSV File: $selected_file\n\nNumber of Rows: $row_count\nNumber of Columns: $column_count" 12 60
        elif [ $exit_status -eq 1 ]; then
        whiptail --title "Canceled" --msgbox "Operation canceled." 8 40
    else
        whiptail --title "Error" --msgbox "An unexpected error occurred. Exit status: $exit_status" 8 40
    fi
}

analyze_csv_file
