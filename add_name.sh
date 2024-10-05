#!/bin/bash

for parent_folder in */; do
  if [ -d "$parent_folder" ]; then
    parent_name=$(basename "$parent_folder")
    
    sub_folder="${parent_folder}/your_subfolder"

    if [ -d "$sub_folder" ]; then
      for file in "$sub_folder"/*; do
        if [ -f "$file" ]; then
          filename=$(basename "$file")
          
          new_filename="${parent_name}_${filename}"
          
          mv "$file" "$sub_folder/$new_filename"
        fi
      done
    fi
  fi
done
