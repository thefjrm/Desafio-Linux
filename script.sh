#!/bin/bash
sudo yum update -y
sudo yum install httpd -y
sudo yum install git -y
sudo git clone https://github.com/thefjrm/Desafio-Linux /var/www/html/Desafio-Linux
sudo systemctl restart httpd
sudo curl -x POST -d "nome=Felipe José Rodrigues Martins" https://difusaotech.com.br/lab/aws/index.php
