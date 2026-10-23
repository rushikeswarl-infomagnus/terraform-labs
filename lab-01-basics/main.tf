resource "local_file" "welcome" {
  filename = "${path.module}/welcome.txt"
  content  = "Hello, ${var.learner_name}! Welcome to Terraform.\n"
}
