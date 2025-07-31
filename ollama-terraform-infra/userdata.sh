#!/bin/bash
yum update -y
amazon-linux-extras install docker -y
service docker start
usermod -a -G docker ec2-user
chkconfig docker on

# Install Ollama
curl -fsSL https://ollama.com/install.sh | sh
ollama serve