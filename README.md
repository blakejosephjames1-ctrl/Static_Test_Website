# Static_Test_Website
This repository contains a lightweight three-file static website built for testing Nginx based low power web servers\
The deployment below can be used to set up a new PI installing nginx for running the website or to set up a PI already running a Nginx webiste
### 💻
HTML5\
CSS3\
JavaScript\
Nginx



 
## File Sturcture
📁 **project_root_folder**

├── index.html     
├── style.css       
└── script.js 

## Deployment script for pi
*if you are launching this code on a raspberry pi run the commands below into the command prompt*

**Go to home directory**\
cd ~  

**Download deploy script (fixed URL)**\
curl -O https://raw.githubusercontent.com/blakejosephjames1-ctrl/Static_Test_Website/main/deploy.sh  

**Make it executable**\
chmod +x deploy.sh  

**Run it**\
./deploy.sh

