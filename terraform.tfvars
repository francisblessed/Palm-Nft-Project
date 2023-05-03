# VPC variables
vpc_name             = "ipfs-vpc"
vpc_cidr             = "10.0.0.0/16"
vpc_azs              = ["eu-west-1a","eu-west-1b","eu-west-1c"]
vpc_private_subnets  = [ "10.0.11.0/24", "10.0.12.0/24", "10.0.13.0/24" ]
associate_public_ip_address = false
vpc_tags             = { "owner" = "ipfs_vpc" }
ec2_name             = "ipfs1"
ebs_volume_size      = "100"
key_name             = "ipfs-keypair-name"
availability_zone  = ["eu-west-1a", "eu-west-1b", "eu-west-1c"]
count_ = 3