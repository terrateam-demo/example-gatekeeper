resource "null_resource" "foo" {
  provisioner "local-exec" {
    command = "echo this is a null resource"
  }
}
