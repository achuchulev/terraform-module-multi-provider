# A sample repo that shows how to use multiple provider instances with modules in Terraform to create resources in 2 regions

## Prerequisites

- git
- terraform (>= 0.12)
- AWS subscription

## How to use

- Get the repo

```
git clone https://github.com/achuchulev/terraform-module-multi-provider.git
cd terraform-module-multi-provider
```

- Create `terraform.tfvars` file

```
aws_access_key = "your_aws_access_key"
aws_secret_key = "your_aws_secret_key"
```

- Initialize terraform and plan/apply

```
terraform init
terraform plan
terraform apply
```

- `Terraform apply` will:
  - create new VPC on each of the specified 2 AWS regions
  - output ids & tags of both VPCs
