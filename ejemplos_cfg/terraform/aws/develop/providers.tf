terraform {
  backend "http" {  
  }
}

# Cuenta AWS 
provider "aws" {
  region      = var.AWS_REGION
  access_key  = var.HYPERVISOR_USER
  secret_key  = var.HYPERVISOR_PASSWD
}
