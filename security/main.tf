variable "security_group_name" {
  default = "example-sg"
}

resource "null_resource" "example_security_group" {
  triggers = {
    name = var.security_group_name
  }

  provisioner "local-exec" {
    command = "echo Simulating Security Group '${self.triggers.name}'"
  }
}
