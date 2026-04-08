variable "base_vm_name" {
  type    = string
  default = "base-ubuntu2204"
}

variable "base_box_path" {
  type    = string
  default = "/home/vagrant/.vagrant.d/boxes/bento-VAGRANTSLASH-ubuntu-22.04/202510.26.0/amd64/virtualbox/box.ovf"
}

variable "ssh_public_key" {
  type    = string
  default = "/home/vagrant/.ssh/parcial2_ansible.pub"
}

variable "hostonly_if" {
  type    = string
  default = "vboxnet0"
}

variable "vm_haproxy_name" {
  type    = string
  default = "vm-haproxy"
}

variable "vm_microservices_name" {
  type    = string
  default = "vm-microservices"
}
