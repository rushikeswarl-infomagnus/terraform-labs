# Lab 2 solution

Add validation to `variable "services"`:

```hcl
  validation {
    condition = length(var.services) > 0 && alltrue([
      for service_name in keys(var.services) : can(regex("^[a-z0-9-]+$", service_name))
    ])
    error_message = "Provide at least one service; names may contain lowercase letters, numbers, and hyphens."
  }
```

Use a local to build the content, then reference it from the resource:

```hcl
locals {
  service_content = {
    for service_name, service_message in var.services :
    service_name => "${service_name}: ${service_message}\n"
  }
}

resource "local_file" "service" {
  for_each = local.service_content

  filename = "${path.module}/${each.key}.txt"
  content  = each.value
}
```
