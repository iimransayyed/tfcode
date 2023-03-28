# Create VPC from module
# Change environment name, CIDR blocks and additional tags as needed
module "vpc_staging" {
  source = "../../modules/vpc/"

  environment_name         = "staging"
  vpc_cidr                 = "10.1.0.0/16"
  additional_tags = {
    Environment = "Staging"
    Owner       = "RnDAdmin"
    TerraformManaged = "True"
  }
}