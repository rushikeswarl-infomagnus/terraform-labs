# Lab 1 solution

Add this output to `outputs.tf`:

```hcl
output "greeting" {
  description = "The message written to the welcome file."
  value       = local_file.welcome.content
}
```

Change `learner_name` in `variables.tf` to test how an input variable affects the planned file content. The existing `welcome_file` output reports the resource path.
