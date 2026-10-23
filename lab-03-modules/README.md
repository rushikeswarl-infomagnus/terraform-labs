# Lab 3: Reusable modules

**Goal:** Package a repeated file operation as a small child module and call it for multiple entries.

## Concepts

Module sources, input variables, module outputs, `for_each` on a module call, and `path.module`.

## Tasks

1. Follow the module input from the root `main.tf` into `modules/text_file/variables.tf`.
2. Add a `description` input and use it to make each file's content more informative.
3. Expose the generated file's content as a module output, then collect it in a root output.
4. Add a third entry to `var.documents` and inspect the plan.

## Check your work

```sh
terraform init
terraform fmt -recursive
terraform validate
terraform plan
```

The root module passes each output path to the child module, keeping generated files in this lab folder. Compare with `solutions/lab-03-modules/` after trying the tasks.
