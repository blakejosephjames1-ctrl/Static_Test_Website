#!/bin/bash
set -e

echo "Raspberry Pi Web Deployment Script"
sudo apt update

echo "Installing Git"
sudo apt install -y git

echo "Installing Nginx"
sudo apt install -y nginx

echo "Enabling and starting Nginx"
sudo systemctl enable nginx
sudo systemctl start nginx

REPO_URL="https://github.com/blakejosephjames1-ctrl/Static_Test_Website.git"
REPO_DIR="/home/$USER/website"

echo "Checking if repo already exists"

if [ -d "$REPO_DIR" ]; then
    echo "Repo found, pulling latest changes"
    cd "$REPO_DIR"
    git pull
else
    echo "Cloning repo for the first time"
    git clone "$REPO_URL" "$REPO_DIR"
    cd "$REPO_DIR"
fi

echo "Creating directory"
sudo mkdir -p /var/www/html
sudo rm -rf /var/www/html/*

echo "Copying website files to /var/www/html"
sudo cp index.html style.css script.js /var/www/html/

echo "Setting permissions"
sudo chown -R www-data:www-data /var/www/html
sudo chmod -R 755 /var/www/html

echo "Reloading Nginx"
sudo systemctl reload nginx

echo "Deployment Complete !!!"
