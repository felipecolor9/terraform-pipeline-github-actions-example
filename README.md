# Terraform Pipeline - Github Actions

## EN-US
### About
A pipeline example for a Terraform project with Continuous Integration/Continuous Delivery best practices

### What was done?
* Added new secrets AWS_ACCESS_KEY_ID and AWS_SECRET_ACCESS_KEY in github repository secrets for integration with a AWS account
* Added new secret TF_VAR_aws_key_pub to reference a public key to access the EC2 instance

### Workflows

1. Terraform Validate & Plan
2. Terraform Apply
3. Terraform Destroy