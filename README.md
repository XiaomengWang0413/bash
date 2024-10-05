# aadd_name.sh
~~~
将一级文件夹的名称添加到二级文件夹中文件名字的前端
说明

    定义目标文件夹:
        target_folder="target_directory" 指定目标文件夹路径。请根据实际情况修改 target_directory。

    确保目标文件夹存在:
        mkdir -p "$target_folder" 确保目标文件夹存在，如果不存在则创建。

    遍历一级文件夹:
        for parent_folder in */ 遍历当前目录下的所有一级文件夹。
        if [ -d "$parent_folder" ] 确保它是一个目录。

    获取一级文件夹名字:
        parent_name=$(basename "$parent_folder") 获取一级文件夹的名字。

    指定二级文件夹路径:
        sub_folder="${parent_folder}/your_subfolder" 设置为二级文件夹的路径。请根据实际情况修改 your_subfolder。

    遍历文件并复制:
        for file in "$sub_folder"/* 遍历二级文件夹下的所有文件。
        if [ -f "$file" ] 确保处理的是文件。
        使用 cp 命令将文件复制到目标文件夹，并重命名为 一级文件夹名_原文件名 的形式。

~~~
#copy_file.sh
~~~
将一级文件夹下指定二级文件夹对应的文件提取到指定文件夹中
说明

    定义目标文件夹:
        target_folder="target_directory" 指定目标文件夹路径。请根据实际情况修改 target_directory。

    确保目标文件夹存在:
        mkdir -p "$target_folder" 确保目标文件夹存在，如果不存在则创建。

    遍历一级文件夹:
        for parent_folder in */ 遍历当前目录下的所有一级文件夹。
        if [ -d "$parent_folder" ] 确保它是一个目录。

    指定二级文件夹路径:
        sub_folder="${parent_folder}/your_subfolder" 设置为二级文件夹的路径。请根据实际情况修改 your_subfolder。

    遍历文件并复制:
        for file in "$sub_folder"/* 遍历二级文件夹下的所有文件。
        if [ -f "$file" ] 确保处理的是文件。
        使用 cp 命令将文件复制到目标文件夹。
~~~~
