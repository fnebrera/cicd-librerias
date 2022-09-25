output "hyperv_instance_ip" {
    description     = "Ip dinamica de la maquina virtual creada"
    value           = (length(hyperv_machine_instance.test-hyperv.network_adaptors[0].ip_addresses) > 0 ? hyperv_machine_instance.test-hyperv.network_adaptors[0].ip_addresses[0]: "")
}