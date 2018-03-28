# Terraform

talk4u's terraform. (visit [terraform.io](https://terraform.io) for further information)
**Always use terraform to create new resources**. Consult to Jongbin for using terraform.

## Conventions & Rules

- Folder structure: `<provider>/<region>/<category_or_app>/<component>.tf`
- Define variables, `terraform` and `provider` resource in `variables.tf`
  - Use `talk5u-tfstate` S3 bucket for terraform backend
  - Backend object key should be consistent with path
- Define output in `outputs.tf`
- Always use `tf plan -out plan.tfplan` before applying changes
  - Always get confirmed by teammates before applying changes

