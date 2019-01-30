
## Basic ES module

This is a basic terraform module to deploy an elasticsearch cluster in AWS.

You will need to either provide a credentials file, or export the appropriate variables.
See: https://www.terraform.io/docs/providers/aws/ for details

To run the example:
```
cd terraform/example
terraform init
terraform plan
terraform apply # if it all looks good
```

The actual module files are in `terraform/modules/elasticsearch` 
