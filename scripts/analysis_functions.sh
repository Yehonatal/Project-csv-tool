#!/bin/bash

analyze_csv_file() {
    echo "Available CSV files in the data folder:"
    ls data/*.csv
    
    read -rp "Enter the name of the CSV file to analyze (including extension): " selected_file
    
    # Check if the selected file exists
    if [[ -f "data/$selected_file" ]]; then
        echo "Analyzing CSV file: $selected_file"
        
        # Example: Calculate the number of rows and columns
        row_count=$(wc -l < "data/$selected_file")
        column_count=$(head -n 1 "data/$selected_file" | tr ',' '\n' | wc -l)
        echo "Number of rows: $row_count"
        echo "Number of columns: $column_count"
        
    else
        echo "File does not exist. Please try again."
    fi
}

analyze_csv_file
