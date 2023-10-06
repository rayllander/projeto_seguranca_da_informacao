# projeto_seguranca_da_informacao

Na configuração da VM1, ela vai subir com o Ubuntu com o ip: "192.168.56.51", tem as configurações provision para Atualizar o sistema e configurar firewall,
já na configuração da VM2 ela também vai subir com o ubuntu com o ip "192.168.56.52" e ela Configura firewall para permitir tráfego HTTP (porta 80),
Configura firewall para permitir tráfego HTTPS (porta 443), Desabilita acesso root via SSH, Limita o número de tentativas de login SSH e defini tempo de bloqueio,
Instala ferramentas de monitoramento (fail2ban), Instala e configurar um servidor NTP (Network Time Protocol), Habilitar a auditoria de logs para monitora eventos do sistema,
e na terceira VM a "proxy_squid" também subiu pelo ubuntu com o ip "192.168.56.54" e ela Configura firewall para permitir tráfego HTTP (porta 80) na (porta 443), Desabilitar acesso root via SSH,
Limita o número de tentativas de login SSH e definir tempo de bloqueio, Instala ferramentas de monitoramento (fail2ban), Instala e configurar um servidor NTP (Network Time Protocol),
Habilitar a auditoria de logs para monitorar eventos do sistema.
