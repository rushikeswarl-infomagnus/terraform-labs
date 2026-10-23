# Lab 5 solution

Add a third value to the `entries` default in `variables.tf`:

```hcl
entries = {
  api    = "API service"
  worker = "Background worker"
  web    = "Web frontend"
}
```

Update the test assertions in `tests/inventory.tftest.hcl`:

```hcl
assert {
  condition     = length(output.entry_names) == 3
  error_message = "The default inventory should contain three entries."
}

assert {
  condition     = contains(output.entry_names, "web")
  error_message = "The inventory should contain the web entry."
}
```
