# README

These are reusable Terraform modules for AWS, different with
[terraform-aws-modules](https://registry.terraform.io/namespaces/terraform-aws-modules).
The modules in this repo is supposed to give 1-to-1 output of each resource defined
in [AWS Provider](https://registry.terraform.io/providers/hashicorp/aws/latest/docs) to
allow full customization of AWS resources that you want to deploy.

## Usage

You can use these modules by directly linking your modules to
the repo+directory path using the `source = "github.com/..."`
directive in your module, or you can download the whole repo (recommended).
The first option will automatically download/copy
the whole repo to each of your module directory, which is OK if
you only need to use one or two modules from this repo.
If you want to use more than two modules from this repo it is
recommended to create a script that downloads this repo on the fly
before you invoke terraform. That way your modules will refer to
the same single copy of the downloaded repo.

## Example Creating VPC Resource

 1. Download this git repo to your Terraform project (optional).

 2. Create a file `vpc.tf` with the following content:

    ```
    module "myvpc" {
      # Use the following line to link your module directly to github.
      # source = "github.com/harisfauzi/shared-terraform-aws.git//modules/aws/vpc/aws_vpc?ref=main"
      # Use the following line to link your module to the downloaded copy of the repo.
      source = "./modules/aws/vpc/aws_vpc"  # Adjust the path to the correct location of aws_vpc

      name        = "myvpc"
      cidr_block  = "172.31.240.0/20"
      enable_ipv6 = true

      tags = {
        Organization  = "ACME"
        Environment   = "testing"
      }
    }

    ```

 3. Add the `provider` and `terraform` blocks as necessary.

 4. Authenticate to AWS, then run `terraform init`, `terraform plan`, `terraform apply`
    however you want.