#!/bin/bash

# Atualizar o sistema
sudo apt update
sudo apt upgrade -y

# Configurar firewall
sudo ufw default deny incoming
sudo ufw default allow outgoing
sudo ufw allow ssh
sudo ufw enable

