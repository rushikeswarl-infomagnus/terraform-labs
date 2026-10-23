# Lab 5: Tests and automation

**Goal:** Add an executable contract for a Terraform configuration and run it in CI.

## Concepts

Terraform test files, plan-only assertions, deterministic outputs, formatting, validation, and GitHub Actions.

## Tasks

1. Run `terraform test` and read the assertions in `tests/inventory.tftest.hcl`.
2. Add a third inventory entry and update the expected count in the test.
3. Add an assertion for the new entry's name.
4. Review `.github/workflows/terraform.yml` and identify which checks run for every lab and which run only here.

## Check your work

```sh
terraform init
terraform fmt -recursive
terraform validate
terraform test
```

The test uses `command = plan`, so it checks configuration without writing inventory files. Run tests only in a disposable local checkout when experimenting with apply-mode tests.
