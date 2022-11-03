terraform {
  required_providers {
    hyperv = {
      source  = "registry.terraform.io/taliesins/hyperv"
      version = "1.0.3"
    }
  }
  
  # Definimos como backend a nuestro gitlab
  backend "http" {
  
  }
}

# Servidor hyper-v sobre el que vamos a crear la maquina virtual 
provider "hyperv" {
  user        = var.HYPERVISOR_USER
  password    = var.HYPERVISOR_PASSWD
  host        = var.HYPERV_HOST
  port        = 5985
  https       = false
  insecure    = true
  use_ntlm    = false
  script_path = "C:/Temp/terraform_%RAND%.cmd"
  timeout     = "30s"
}
