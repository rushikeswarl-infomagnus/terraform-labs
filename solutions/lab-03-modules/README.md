# Lab 3 solution

Change `documents` to a map of objects in the root `variables.tf`:

```hcl
variable "documents" {
  type = map(object({
    content     = string
    description = string
  }))
  default = {
    overview = {
      content     = "A reusable Terraform module creates this file."
      description = "Module demonstration"
    }
    checklist = {
      content     = "Modules make repeated infrastructure easier to maintain."
      description = "Terraform learning note"
    }
  }
}
```

Pass both values from the root `main.tf` module block:

```hcl
content     = each.value.content
description = each.value.description
```

Add a `description` string input to `modules/text_file/variables.tf`. Then use it and expose content in the child module:

```hcl
resource "local_file" "document" {
  filename = var.filename
  content  = "${var.description}\n${var.content}\n"
}

output "path" {
  value = local_file.document.filename
}

output "content" {
  value = local_file.document.content
}
```

Collect the additional output in the root `outputs.tf`:

```hcl
output "documents" {
  value = {
    for name, document in module.document :
    name => { path = document.path, content = document.content }
  }
}
```
