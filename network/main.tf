variable "vpc_cidr" {
  default = "10.1.0.0/24"
}

resource "null_resource" "example_vpc" {
  triggers = {
    cidr_block = var.vpc_cidr
  }

  provisioner "local-exec" {
    command = "echo Simulating VPC with CIDR ${self.triggers.cidr_block}"
  }
}
