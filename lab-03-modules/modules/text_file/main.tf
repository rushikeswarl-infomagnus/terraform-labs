resource "local_file" "document" {
  filename = var.filename
  content  = var.content
}
