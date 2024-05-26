#!/bin/bash

input_csv_file() {
    echo "Please enter the path to your CSV file:"
    read -r csv_file
    
    if [[ -f "$csv_file" && -r "$csv_file" ]]; then
        echo "File is valid and readable."
        
        mkdir -p data
        
        cp "$csv_file" data/
        echo "CSV file copied to data folder."
    else
        echo "File does not exist or is not readable. Please try again."
    fi
}

input_csv_file
