resource "local_file" "legacy" {
  filename = "${path.module}/state-demo.txt"
  content  = "This file keeps its identity when the configuration is refactored.\n"
}
