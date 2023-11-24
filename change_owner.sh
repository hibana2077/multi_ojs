#!/bin/bash
###
 # @Author: hibana2077 hibana2077@gmail.com
 # @Date: 2023-11-24 10:02:38
 # @LastEditors: hibana2077 hibana2077@gmail.com
 # @LastEditTime: 2023-11-24 10:17:51
 # @FilePath: \multi_ojs\change_owner.sh
 # @Description: 这是默认设置,请设置`customMade`, 打开koroFileHeader查看配置 进行设置: https://github.com/OBKoro1/koro1FileHeader/wiki/%E9%85%8D%E7%BD%AE
### 

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
        docker exec -it "$container_name" chown -R apache:apache "$file"
    done
done
