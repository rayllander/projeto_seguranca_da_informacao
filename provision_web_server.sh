# Configurar firewall para permitir tráfego HTTP (porta 80)
sudo ufw allow 80/tcp

# Configurar firewall para permitir tráfego HTTPS (porta 443)
sudo ufw allow 443/tcp

# Desabilitar acesso root via SSH
sudo sed -i 's/PermitRootLogin yes/PermitRootLogin no/' /etc/ssh/sshd_config
sudo systemctl restart ssh

# Limitar o número de tentativas de login SSH e definir tempo de bloqueio
echo "MaxAuthTries 3" | sudo tee -a /etc/ssh/sshd_config
echo "LoginGraceTime 1m" | sudo tee -a /etc/ssh/sshd_config
sudo systemctl restart ssh

# Instalar ferramentas de monitoramento (fail2ban)
sudo apt install fail2ban

# Instalar e configurar um servidor NTP (Network Time Protocol)
sudo apt install ntp

# Habilitar a auditoria de logs para monitorar eventos do sistema
sudo apt install auditd


