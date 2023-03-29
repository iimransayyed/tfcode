# Create VPC from module
# Change environment name, CIDR blocks and additional tags as needed
module "vpc_staging" {
  source = "../../modules/vpc/"

  environment_name         = local.vpc_name
  vpc_cidr                 = "10.1.0.0/16"
  public_subnet_cidr_az_a  = ["10.1.0.0/22"]
  public_subnet_cidr_az_b  = ["10.1.4.0/22"]
  public_subnet_cidr_az_c  = ["10.1.8.0/22"]
  private_subnet_cidr_az_a = ["10.1.12.0/22"]
  private_subnet_cidr_az_b = ["10.1.16.0/22"]
  private_subnet_cidr_az_c = ["10.1.20.0/22"]

  additional_tags = {
    Environment = "Staging"
    Owner       = "RnDAdmin"
    TerraformManaged = "True"
  }
}