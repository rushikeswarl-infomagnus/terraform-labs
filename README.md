# Terraform Labs

A hands-on path through Terraform fundamentals, using only the `local` provider. The labs create files on your machine; they do not create cloud infrastructure, need cloud credentials, or incur cloud charges.

## Prerequisites

- Terraform CLI 1.6 or newer
- Git
- A terminal

Terraform downloads the provider plugin during `init`, so the first run needs internet access. Review each plan before applying it: these labs are local-only, but `apply` writes files into the lab directory.

## Learning path

1. [Lab 1: First resource](lab-01-basics/README.md) - HCL, resources, variables, and outputs
2. [Lab 2: Expressions and collections](lab-02-expressions/README.md) - locals, maps, `for_each`, and validation
3. [Lab 3: Reusable modules](lab-03-modules/README.md) - module inputs, outputs, and composition
4. [Lab 4: State and refactoring](lab-04-state/README.md) - inspect local state and refactor addresses with `moved` blocks
5. [Lab 5: Tests and automation](lab-05-testing/README.md) - `terraform test` and CI validation

Each lab is independent. Start with its README, edit the starter configuration, and use the corresponding folder as the `-chdir` directory.

## Typical workflow

From the repository root, for example:

```sh
terraform -chdir=lab-01-basics init
terraform -chdir=lab-01-basics fmt -recursive
terraform -chdir=lab-01-basics validate
terraform -chdir=lab-01-basics plan
```

Apply only when a lab asks you to inspect local state or generated files:

```sh
terraform -chdir=lab-01-basics apply
terraform -chdir=lab-01-basics destroy
```

`destroy` removes files managed by that lab. Never share `.tfstate` files: they can contain sensitive values in real projects. State and generated artifacts are ignored by Git.

## Solutions

Reference configurations are in [`solutions/`](solutions/). Try each exercise before looking. Solutions show one valid approach; Terraform often has several.

## Contributions

Keep examples isolated from cloud providers, avoid credentials and personal data, and include verification steps when changing a lab.
