#!/bin/bash
# 尋找當前目錄下所有以 "ojs_app_" 為前綴的容器名稱
container_names=$(find . -name "ojs_app_*")

# 需要改變權限的文件和目錄
files=(config.inc.php public/ ../files/)

# 對於每個找到的容器
for container_name in $container_names
do
    # 對於每個文件或目錄
    for file in "${files[@]}"
    do
        echo "Changing owner of $file in $container_name"
        docker exec -it "$container_name" chown -R apache:apache "$file"
    done
done
