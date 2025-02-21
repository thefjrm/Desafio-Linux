#!/bin/bash

# Log
exec > >(tee -a /var/log/setup-script.log) 2>&1

echo "$(date): Iniciando instalação do Apache com Yum..."

# Instala o Apache e suas dependências
sudo yum update -y
sudo yum install -y httpd

echo "$(date): Apache instalado."

echo "$(date): Clonando repositório do GitHub..."
git clone https://github.com/thefjrm/validacao-formulario.git /var/www/html/meu-site

echo "$(date): Repositório clonado."

echo "$(date): Configurando Apache para servir o site..."
# (Opcional) Adapte o caminho para o seu arquivo index.html
cp /var/www/html/meu-site/index.html /var/www/html/

echo "$(date): Site configurado."

echo "$(date): Enviando solicitação POST..."
curl -X POST -d "nome=Felipe José Rodrigues Martins" https://difusaotech.com.br/lab/aws/index.php

echo "$(date): Solicitação POST enviada."

echo "$(date): Iniciando Apache..."
systemctl start httpd

echo "$(date): Apache iniciado."

echo "$(date): Habilitando Apache para iniciar na inicialização..."
systemctl enable httpd

echo "$(date): Apache habilitado."

echo "$(date): Script finalizado."
