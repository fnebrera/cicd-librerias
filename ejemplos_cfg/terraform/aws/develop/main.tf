#
# Definicion de recursos a crear/destruir
#

# Creamos virtual machine
resource "aws_instance" "test-cicd" {
  ami                  = var.AWS_AMI
  instance_type        = var.AWS_INSTANCE_TYPE

  tags = {
    Name               = var.AWS_VM_NAME
  }

  root_block_device {
    volume_size        = var.AWS_VOLUME_SIZE
  }
}
