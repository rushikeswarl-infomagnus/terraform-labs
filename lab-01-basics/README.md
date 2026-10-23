# Lab 1: Your first resource

**Goal:** Read and change a small Terraform configuration that manages one local file.

## Concepts

HCL blocks, provider requirements, a `local_file` resource, input variables, and outputs.

## Tasks

1. Read `versions.tf`, `variables.tf`, `main.tf`, and `outputs.tf` in that order.
2. Change the default learner name and run `terraform plan`. Identify which planned attribute changes.
3. Add a `greeting` output that reports the configured message.
4. Apply the plan, inspect `welcome.txt`, then run `terraform destroy` to remove it.

## Check your work

```sh
terraform init
terraform fmt -recursive
terraform validate
terraform plan
```

The resource writes only `welcome.txt` in this lab directory. Compare with `solutions/lab-01-basics/` after attempting the tasks.
