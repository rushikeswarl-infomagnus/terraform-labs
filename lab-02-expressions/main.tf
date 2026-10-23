resource "local_file" "service" {
  for_each = var.services

  filename = "${path.module}/${each.key}.txt"
  content  = each.value
}
