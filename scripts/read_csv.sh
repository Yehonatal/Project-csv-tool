#!/bin/bash

read_csv_file() {
    echo "Please enter the path to your CSV file:"
    read -r csv_file
    
    if [[ -f "$csv_file" && -r "$csv_file" ]]; then
        echo "Reading CSV file: $csv_file"
        cat "$csv_file"
    else
        echo "File does not exist or is not readable. Please try again."
    fi
}

read_csv_file
