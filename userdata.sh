#!/bin/bash
sudo yum update -y
# install docker
sudo yum install docker -y
sudo systemctl start docker
sudo systemctl enable docker
sudo groupadd docker
sudo usermod -a -G docker ec2-user

# install git
sudo yum install git -y
# install jenkins
sudo wget -O /etc/yum.repos.d/jenkins.repo \
    https://pkg.jenkins.io/redhat-stable/jenkins.repo
sudo rpm --import https://pkg.jenkins.io/redhat-stable/jenkins.io.key
sudo yum upgrade
sudo amazon-linux-extras install java-openjdk11 -y
sudo yum install jenkins -y
sudo systemctl enable jenkins
sudo systemctl start jenkins
