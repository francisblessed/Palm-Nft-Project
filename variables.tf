variable "ec2_name" {
  type = string
  description = "Ec2 instance"
}

variable "ebs_volume_size" {
  description = "Size of the EBS volume in GB"
}
variable "associate_public_ip_address" {
  type        = bool
  description = "ip address"
}

# VPC variables
variable "vpc_name" {
  description = "Name of the VPC"
  type        = string
}

variable "vpc_cidr" {
  description = "VPC CIDR range"
  type        = string
}

variable "vpc_azs" {
  description = "List of AZs"
  type        = list(string)
}

variable "vpc_private_subnets" {
  description = "List of public subnet CIDR ranges"
  type        = list(string)
}

variable "vpc_tags" {
  description = "Tags to apply to vpc peering for api x data vpc"
  type        = map(string)
}

variable "key_name" {
  description = "keypair"
  type        = string
}

variable "availability_zone" {
  description = "Availability Zone"
  type = list(string)
}
variable "count_" {
  type = number
}
