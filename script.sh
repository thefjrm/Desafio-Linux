#!/bin/bash
sudo yum update -y
sudo yum upgrade -y
sudo yum install httpd -y
sudo yum install git -y
sudo git clone https://github.com/thefjrm/validacao-formulario /var/www/html/validacao-formulario
sudo mv /var/www/html/validacao-formulario/* /var/www/html
sudo systemctl restart httpd
sudo curl -x POST -d "nome=Felipe José Rodrigues Martins" https://difusaotech.com.br/lab/aws/index.php
echo "Script executado com sucesso em $(date)" >> /var/log/setup-script.log
