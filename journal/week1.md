# Terraform Beginner Bootcamp 2023 - Week 1

## Root Module Structure

Our root module structure is as follows:

```
PROJECT_ROOT
│
├── main.tf                 # everything else.
├── variables.tf            # stores the structure of input variables
├── terraform.tfvars        # the data of variables we want to load into our terraform project
├── providers.tf            # defined required providers and their configuration
├── outputs.tf              # stores our outputs
└── README.md               # required for root modules
```

[Standard Module Structure](https://developer.hashicorp.com/terraform/language/modules/develop/structure)

## Terraform and Input Variables

### Terraform Cloud Variables

In terraform we can set two kind of variables:
- Enviroment Variables - those you would set in your bash terminal eg. AWS credentials
- Terraform Variables - those that you would normally set in your tfvars file

We can set Terraform Cloud variables to be sensitive so they are not shown visibliy in the UI.

### Loading Terraform Input Variables

[Terraform Input Variables](https://developer.hashicorp.com/terraform/language/values/variables)

### var flag
We can use the `-var` flag to set an input variable or override a variable in the tfvars file eg. `terraform -var user_ud="my-user_id"`

### var-file flag

- TODO: document this flag

### terraform.tvfars

This is the default file to load in terraform variables in blunk

### auto.tfvars

- TODO: document this functionality for terraform cloud

### order of terraform variables

- TODO: document which terraform variables takes presendence.

## Dealing with Configuration DRift

## What Happens when we lose a state file?

If you losee your statefile, you will mostly likely tear down the cloud infrastructure manually.

You can use terraform import but ir=t wont work for all cloud services. You need to check terraform providers docs for which resources support import.

### Fix Misssing Resources With Teraaform Import
 This is a command to import s3 bucket lost from a statefile, there are other ways to import a resources using the `import.tf` file.
`terraform import aws_s3_bucket.bucket bucket_name`

[Terraform Import](https://developer.hashicorp.com/terraform/cli/import)
[AWS S3 Bucket IMport](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/s3_bucket#import)


### Fix Manual Configuration

If Cloud resources are modified or deleted manually through clickOps, When you run Terraform plan this will attempt to put the infra back to expected state fixing Configuration Drift.