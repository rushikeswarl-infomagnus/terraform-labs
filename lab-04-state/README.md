# Lab 4: State and refactoring

**Goal:** Understand how Terraform tracks resource addresses and preserves identity when configuration is refactored.

## Concepts

State addresses, `terraform state list`, `terraform state show`, and `moved` blocks.

## Tasks

1. Run `terraform init` and `terraform apply` to create the local state and file.
2. Inspect the state with `terraform state list` and `terraform state show local_file.legacy`.
3. Rename `local_file.legacy` to `local_file.current` in `main.tf`, update the output reference, and add a `moved` block from the old address to the new one.
4. Run `terraform plan`. Confirm Terraform reports a move rather than a delete and create, then apply and inspect the new address.

## Check your work

```sh
terraform fmt -recursive
terraform validate
terraform plan
```

Keep the state file local and private. `terraform destroy` removes the managed file. The local provider's `local_file` resource does not implement import, so this local-only lab does not pretend to demonstrate a working import. The reference end state is in `solutions/lab-04-state/`.
