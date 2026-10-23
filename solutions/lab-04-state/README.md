# Lab 4 solution

Rename the resource in `main.tf`, keeping its filename and content unchanged:

```hcl
resource "local_file" "current" {
  filename = "${path.module}/state-demo.txt"
  content  = "This file keeps its identity when the configuration is refactored.\n"
}
```

Add `moved.tf`:

```hcl
moved {
  from = local_file.legacy
  to   = local_file.current
}
```

Update the output to refer to `local_file.current`. The `moved` block tells Terraform to retain the existing state object at its new address. The local provider's `local_file` resource does not support import; use a provider that implements import when practicing that workflow.
