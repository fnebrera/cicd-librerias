output "hyperv_instance_ip" {
    description     = "Ip publica de la maquina virtual creada"
    value           = aws_instance.test-cicd.public_ip
}

output "hyperv_instance_private_ip" {
    description     = "Ip privada la maquina virtual creada"
    value           = aws_instance.test-cicd.private_ip
}

output "hyperv_host_name" {
    description     = "Host name que queremos poner a la maquina virtual creada"
    value           = var.AWS_VM_NAME 
}
