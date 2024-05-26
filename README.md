# CSV Data Analysis Tool (Born again shell) + Whiptail

lol i know it's Bourne ( "born" just sound 🤌🏾)

The CSV Data Analysis Tool is a shell script to help a friend :)

## Installing Whiptail

- ```sudo dnf install newt``` - Fedora
- ```sudo apt-get install whiptail``` - Debian/ubuntu
- ```sudo pacman -S newt``` - Arch

## Usage

To run the CSV Data Analysis Tool, follow these steps:

1. Ensure that the script files are executable:

   ```bash
   chmod +x make_executable.sh
   ./make_executable.sh
   ```

2. Execute the main script:

   ```bash
   ./main.sh
   ```

## Features

- Input a CSV file for analysis.
- Analyze CSV files using various functionalities:
  - Displaying the number of rows and columns.
  - Listing unique values in a specified column.
  - Calculating summary statistics for numeric columns.
  - Filtering and extracting rows and columns based on user-defined conditions.
  - Sorting the CSV file based on a specific column.
- Handle errors with helpful error messages.
- Offer options for saving the analysis results to a separate output file.
- Ensure compatibility with CSV files with different delimiters and handle quotes and escaping if necessary.

## Folder Structure

```
    CSV_Data_Analysis_Tool/
    │
    ├── scripts/
    |   ├── data/
    |   │   └── input.csv
    │   ├── main.sh
    │   ├── menu.sh
    │   ├── read_csv.sh
    │   ├── analyze_csv.sh
    │   ├── save_results.sh
    │   └── make_executable.sh
    │
    │
    ├── backups/
    │   └── backup_1.csv
    │
    └── README.md
```

---

This README provides instructions for running the script, highlights its features, and outlines optional enhancements. It also includes a folder structure diagram for reference.
