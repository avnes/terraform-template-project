provider "null" {}

resource "null_resource" "greetings" {

  provisioner "local-exec" {
    command = "echo ${var.message}"
  }
}
