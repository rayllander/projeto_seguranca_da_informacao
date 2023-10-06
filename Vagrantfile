Vagrant.configure("2") do |config|
  # Configuração da VM1
  config.vm.define "vm1" do |vm1|
    vm1.vm.box = "ubuntu/focal64"
    vm1.vm.network "public_network", bridge: "vm1", ip: "192.168.56.51"
    vm1.vm.provider "virtualbox" do |vb|
      vb.memory = "1024"
      vb.cpus = 2
    end

    # Provisionamento da VM1 com o script "provision_vm1.sh"
    vm1.vm.provision "shell", path: "provision_vm1.sh"
  end

  # Configuração da VM2 (web_server)
  config.vm.define "web_server" do |web_server|
    web_server.vm.box = "ubuntu/focal64"
    web_server.vm.provider "virtualbox" do |vb|
      vb.name = "Web_Server"
    end
    web_server.vm.network "public_network", ip: "192.168.56.52"

    # Provisionamento da VM2 com o script "provision_web_server.sh"
    web_server.vm.provision "shell", path: "provision_web_server.sh"
  end

  # Defina a máquina virtual "proxy_squid"
  config.vm.define "proxy_squid" do |proxy_squid|
    proxy_squid.vm.box = "ubuntu/focal64"
    proxy_squid.vm.network "public_network", ip: "192.168.56.54"

    # Provisionamento da VM "proxy_squid" com o script "provision_proxy_squid.sh"
    proxy_squid.vm.provision "shell", path: "provision_proxy_squid.sh"
  end
end
