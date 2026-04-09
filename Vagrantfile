Vagrant.configure("2") do |config|
  config.vm.define :controlnode2 do |node|
    node.vm.box = "bento/ubuntu-22.04"
    node.vm.hostname = "controlnode2"
    node.vm.network "private_network", ip: "192.168.100.44"

    node.vm.provider "virtualbox" do |vb|
      vb.name = "controlnode2"
      vb.memory = 5120
      vb.cpus = 6
      
      # 1. Habilitar explícitamente la virtualización anidada
      vb.customize ["modifyvm", :id, "--nested-hw-virt", "on"]
      
      # 2. Cambiar 'none' por 'kvm'. 
      # Esto permite que el kernel de Ubuntu reconozca las extensiones del procesador AMD.
      vb.customize ["modifyvm", :id, "--paravirtprovider", "kvm"]
      
      # 3. Asegurar que las extensiones de hardware estén habilitadas
      vb.customize ["modifyvm", :id, "--hwvirtex", "on"]
    end
  end
end
