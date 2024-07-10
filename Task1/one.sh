#!/bin/bash

echo "###########install jenkins##############"
sudo apt update

curl -fsSL https://pkg.jenkins.io/debian-stable/jenkins.io-2023.key | sudo tee \
    /usr/share/keyrings/jenkins-keyring.asc > /dev/null

echo deb [signed-by=/usr/share/keyrings/jenkins-keyring.asc] \
    https://pkg.jenkins.io/debian-stable binary/ | sudo tee \
    /etc/apt/sources.list.d/jenkins.list > /dev/null

sudo apt-get update

sudo apt-get install fontconfig openjdk-11-jre -y

sudo apt-get install jenkins -y
sudo apt install apache2 -y

echo "###########install Dockers##############"

sudo apt install docker.io -y
sudo apt install docker-compose -y
sudo chown $USER  /var/run/docker.sock
sudo chown  jenkins:jenkins /var/www/html/
sudo chown  jenkins:jenkins /var/www/html









