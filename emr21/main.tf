provider "aws" {
  region = var.region
}

# module "iam" {
#   source = "./modules/iam"
# }

# module "security" {
#   source              = "./modules/security"
#   name                = var.name
#   vpc_id              = var.vpc_id
#   ingress_cidr_blocks = var.ingress_cidr_blocks
# }

# module "ec2_md5" {
#   source              = "./modules/ec2_md5"
#   # name                = var.name
#   # vpc_id              = var.vpc_id
#   # ingress_cidr_blocks = var.ingress_cidr_blocks
# }
