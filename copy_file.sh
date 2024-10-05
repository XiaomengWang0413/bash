#!/bin/bash

# 定义目标文件夹路径（根据你的实际情况修改）
target_folder="target_directory"

# 确保目标文件夹存在，不存在则创建
mkdir -p "$target_folder"

# 遍历当前目录下的所有一级文件夹
for parent_folder in */; do
  if [ -d "$parent_folder" ]; then
    # 指定的二级文件夹路径（根据你的实际情况修改）
    sub_folder="${parent_folder}/your_subfolder"

    # 确保二级文件夹存在
    if [ -d "$sub_folder" ]; then
      # 遍历二级文件夹下的所有文件
      for file in "$sub_folder"/*; do
        if [ -f "$file" ]; then
          # 获取文件的名字部分
          filename=$(basename "$file")
          
          # 复制文件到目标文件夹
          cp "$file" "$target_folder/$filename"
        fi
      done
    fi
  fi
done
