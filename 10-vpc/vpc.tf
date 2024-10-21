module "vpc" {
    source = "git::https://github.com/kanth-sri/aws-vpc-tf-module.git?ref=main"
    vpc_cidr = var.vpc_cidr
    project = var.project
    environment = var.environment
    common_tags = var.common_tags
    ipv4_public_cidr_blocks = var.ipv4_public_cidr_blocks
    privatesubnet_ipv4_cidr_blocks = var.privatesubnet_ipv4_cidr_blocks
    dbsubnet_ipv4_cidr_blocks =var.dbsubnet_ipv4_cidr_blocks
    is_peering_required = true
}
