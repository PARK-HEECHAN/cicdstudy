#!/bin/bash

sudo yum update
sudo yum install -y docker git

# docker
sudo usermod -aG docker ec2-user
systemctl enable docker
systemctl start docker

# docker-compose
sudo curl -L https://github.com/docker/compose/releases/latest/download/docker-compose-$(uname -s)-$(uname -m) -o /usr/local/bin/docker-compose
chmod +x /usr/local/bin/docker-compose

# source
cd /home/ec2-user
git clone https://github.com/PARK-HEECHAN/cicdstudy.git
chown -R ec2-user:ec2-user devops_06_03_jenkins
cd /home/ec2-user/cicdstudy/src/jenkins_remote_docker
git checkout cicdstudy
make run