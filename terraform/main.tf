terraform {
  required_version = ">= 1.5.0"
}

resource "null_resource" "vm_haproxy" {
  triggers = {
    vm_name     = "vm-haproxy"
    targets_dir = "/home/vagrant/parcial2/targets"
    vagrantfile = filemd5("/home/vagrant/parcial2/targets/Vagrantfile")
    authkey     = filemd5("/home/vagrant/parcial2/targets/authorized_key.pub")
  }

  provisioner "local-exec" {
    command     = "vagrant up vm-haproxy --provider=virtualbox"
    working_dir = self.triggers.targets_dir
  }

  provisioner "local-exec" {
    when        = destroy
    command     = "vagrant destroy -f vm-haproxy"
    working_dir = self.triggers.targets_dir
  }
}

resource "null_resource" "vm_microservices" {
  triggers = {
    vm_name     = "vm-microservices"
    targets_dir = "/home/vagrant/parcial2/targets"
    vagrantfile = filemd5("/home/vagrant/parcial2/targets/Vagrantfile")
    authkey     = filemd5("/home/vagrant/parcial2/targets/authorized_key.pub")
  }

  provisioner "local-exec" {
    command     = "vagrant up vm-microservices --provider=virtualbox"
    working_dir = self.triggers.targets_dir
  }

  provisioner "local-exec" {
    when        = destroy
    command     = "vagrant destroy -f vm-microservices"
    working_dir = self.triggers.targets_dir
  }
}

output "vm_haproxy_ip" {
  value = "192.168.56.10"
}

output "vm_microservices_ip" {
  value = "192.168.56.11"
}
