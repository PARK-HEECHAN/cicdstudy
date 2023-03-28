#!/bin/bash

set -x;

sudo yum -y update;
sudo wget -O /etc/yum.repos.d/jenkins.repo \
    https://pkg.jenkins.io/redhat-stable/jenkins.repo;
sudo rpm --import https://pkg.jenkins.io/redhat-stable/jenkins.io.key;
sudo yum upgrade -y;
sudo amazon-linux-extras install epel -y;

sudo yum install jenkins -y;
sudo amazon-linux-extras install java-openjdk11 -y;

sudo systemctl daemon-reload;
sudo systemctl start jenkins;

sudo systemctl status jenkins;

sudo yum install -y docker;
sudo systemctl enable docker;
sudo systemctl start docker;
sudo usermod -aG docker jenkins;
sudo usermod -aG docker ec2-user;