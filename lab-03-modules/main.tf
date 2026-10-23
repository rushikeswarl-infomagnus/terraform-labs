module "document" {
  source   = "./modules/text_file"
  for_each = var.documents

  filename = "${path.module}/${each.key}.txt"
  content  = each.value
}
