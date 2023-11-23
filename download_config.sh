#!/bin/bash
###
 # @Author: hibana2077 hibana2077@gmail.com
 # @Date: 2023-11-23 11:12:32
 # @LastEditors: hibana2077 hibana2077@gmail.com
 # @LastEditTime: 2023-11-23 11:15:16
 # @FilePath: \multi_ojs\download_config.sh
 # @Description: This is a shell script for downloading config file
### 

sudo apt-get update
sudo apt-get install -y wget

for i in {1..3}
do
  source .env.ojs$i
  wget "https://github.com/pkp/ojs/raw/${OJS_VERSION}/config.TEMPLATE.inc.php" -O ./volumes_ojs$i/config/ojs.config.inc.php
done
