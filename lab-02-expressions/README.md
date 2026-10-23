# Lab 2: Expressions and collections

**Goal:** Model several files as data instead of repeating resource blocks.

## Concepts

Maps, `for_each`, `each.key`, `each.value`, `locals`, and input validation.

## Tasks

1. Run `terraform plan` and trace how each map entry becomes a file.
2. Add a local value that prefixes every file's content with the service name.
3. Add variable validation that rejects an empty map and names containing spaces.
4. Add another service and confirm the plan adds only its file.

## Check your work

```sh
terraform init
terraform fmt -recursive
terraform validate
terraform plan
```

Files are written in this lab directory. See `solutions/lab-02-expressions/` for one implementation of the validation and local expression.
