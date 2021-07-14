#module for VPC

module "vpc" {
    source = "../modules/vpc"
    vpc_cidr             = var.vpc_cidr
    instance_tenancy     = var.instance_tenancy
    enable_dns_hostnames = var.enable_dns_hostnames
    vpc_name             = var.vpc_name

}
