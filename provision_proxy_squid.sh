#!/bin/bash

# Atualizar o sistema
sudo apt update
sudo apt upgrade -y

# Instalar o Squid Proxy
sudo apt install -y squid

# Configurar o Squid para escutar na porta 3128
echo 'http_port 3128' | sudo tee -a /etc/squid/squid.conf

# Configurar a política de acesso (exemplo: permitir tudo, você pode ajustar conforme necessário)
echo 'acl all src all' | sudo tee -a /etc/squid/squid.conf
echo 'http_access allow all' | sudo tee -a /etc/squid/squid.conf

# Reiniciar o serviço Squid
sudo systemctl restart squid

# Configurar o firewall para permitir tráfego HTTP (porta 3128)
sudo ufw allow 3128/tcp

# Outras ações de hardening podem ser adicionadas aqui

# Reiniciar o firewall para aplicar as configurações
sudo ufw reload
