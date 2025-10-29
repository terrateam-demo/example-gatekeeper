resource "null_resource" "bar" {
  provisioner "local-exec" {
    command = "echo this is a null resource"
  }
}
