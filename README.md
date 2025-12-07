# Static_Test_Website
This repository contains a lightweight three-file static website built for testing Nginx based low power *(home)* web servers\
The deployment below can be used to set up a new PI installing nginx for running the website or to set up a PI already running a Nginx webiste
### 💻
HTML5\
CSS3\
JavaScript\
Nginx

## File Structure
<pre>
📁/home/pi/website
├── src
│   ├── /index.html
│   ├── /style.css
│   └── /script.js
├── deploy
│   └── /deploy.sh
├── /LICENSE
└── /README.md
</pre>
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

*You can now access the webiste from any computer on the network with http://<raspberry pi ipaddress (hostname -I in bash)>*

## Change website
**You can now change out this website for any alternative <ins>static</ins> webiste built off HTML, JavaScript and CSS**

**To change website contents edit each file using sudo vim /home/pi/website/..... or sudo nano /home/pi/website/...**\

**The three file locations are:**

/home/pi/website/index.html\
/home/pi/website/style.css\
/home/pi/website/script.js

**Now change coppy the files with the commands**

sudo cp /home/pi/website/index.html /var/www/html/\
sudo cp /home/pi/website/style.css /var/www/html/\
sudo cp /home/pi/website/script.js /var/www/html/

**Finaly update permisions and restrt nginx**

sudo chown -R www-data:www-data /var/www/html
sudo chmod -R 775 /var/www/html
sudo systemctl reload nginx
