# terraform-github-template

## How to use it

Create the file `terraform.tfvars` containing your secrets:
```
github_token = ""
```

Before using it for the first time you would need to run:
```bash
terraform init
```

For reviewing and deploying future changes:
```bash
terraform plan
terraform apply
```

## Examples

### Importing repositories

```bash
terraform import module.repositories.module.terraform-github-template.github_repository.repo terraform-github-template
terraform import module.repositories.module.terraform-github-template.github_branch.default terraform-github-template:master
terraform import module.repositories.module.terraform-github-template.github_branch_default.default terraform-github-template
```