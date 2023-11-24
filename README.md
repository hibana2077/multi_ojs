<!--
 * @Author: hibana2077 hibana2077@gmail.com
 * @Date: 2023-11-23 09:09:32
 * @LastEditors: hibana2077 hibana2077@gmail.com
 * @LastEditTime: 2023-11-24 10:48:02
 * @FilePath: \multi_ojs\README.md
 * @Description: This is a open journal system for multi user.
-->
# Multi OJS

This repository contains code for a multi-objective optimization problem solver.

## Installation

To install the software, follow these steps:

1. Clone the repository: `git clone https://github.com/your-username/multi_ojs.git`
2. Change into the project directory: `cd multi_ojs`
3. Install the required dependencies: `bash ./setup.sh`
4. Download the required configuration files: `bash ./download_config.sh`
5. Run docker-compose: `docker-compose up -d`
6. Run change ownership script: `bash ./change_ownership.sh`

Done! You can now access the software by this URL:

- `http://localhost:8080` (for the Traefik dashboard)
- `http://localhost:8081` (for the First OJS application)
- `http://localhost:8082` (for the Second OJS application)
- `http://localhost:8083` (for the Third OJS application)

