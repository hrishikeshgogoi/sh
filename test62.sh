#!/bin/bash
read -p "Enter the folder path: " folder_path
echo "Files in $folder_path:"
ls "$folder_path"
read -p "Enter the name of the Python file to run (including extension): " python_file
if [ -f "$folder_path/$python_file" ]; then
    echo "Running $python_file..."
    python "$folder_path/$python_file"
else
    echo "Error: The specified Python file does not exist in the given path."
fi