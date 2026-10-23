resource "local_file" "entry" {
  for_each = var.entries

  filename = "${path.module}/${each.key}.txt"
  content  = each.value
}
