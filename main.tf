provider "aws" {
  region = "us-east-1"  # Set your default region here
}

module "infra_ou" {
  source = "./modules/infra_ou"

  region    = "us-east-1"  # Set your region here
  parent_id = "r-yoki"     # Set your parent OU ID for Infra OU

  ou_name = "Infra"

  ou_tags = {
    Environment = "Infra"
  }
}

module "workload_ou" {
  source = "./modules/workload_ou"

  region    = "us-east-1"  # Set your region here
  parent_id = module.infra_ou.ou_id  # Use the output from the Infra OU module

  ou_name = "WorkLoad"

  ou_tags = {
    Environment = "WorkLoad"
  }
}

module "security_ou" {
  source = "./modules/security_ou"

  region    = "us-east-1"  # Set your region here
  parent_id = module.workload_ou.ou_id  # Use the output from the WorkLoad OU module

  ou_name = "Security"

  ou_tags = {
    Environment = "Security"
  }
}
