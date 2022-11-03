output "hyperv_instance_ip" {
    description     = "Ip dinamica de la maquina virtual creada"
    value           = (length(hyperv_machine_instance.test-hyperv.network_adaptors[0].ip_addresses) > 0 ? hyperv_machine_instance.test-hyperv.network_adaptors[0].ip_addresses[0]: "")
}

output "hyperv_host_name" {
    description     = "Host name que queremos poner a la maquina virtual creada"
    value           = var.VM_NAME 
}