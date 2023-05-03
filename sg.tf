resource "aws_security_group" "ipfs" {
  name        = "ipfs-arn-sg"
  description = "IPFS Security Group"
  vpc_id      = module.vpc.vpc_id

  dynamic "ingress" {
    for_each = [4001, 8080, 22]
    content {
      from_port   = ingress.value
      to_port     = ingress.value
      protocol    = "tcp"
      cidr_blocks = [var.vpc_cidr]
    }
  }
}

/*module "ipfs_security_group" {
  source = "./modules/security_group"
  name   = "sg-ipfs"
  description = "IPFS Security Group"
  vpc_id = var.vpc_id

  ingress_rules = [
    {
      from_port   = 4001
      to_port     = 4001
      protocol    = "tcp"
      cidr_blocks = ["0.0.0.0/0"]
    },
    {
      from_port   = 8080
      to_port     = 8080
      protocol    = "tcp"
      cidr_blocks = ["0.0.0.0/0"]
    },
    {
      from_port   = 22
      to_port     = 22
      protocol    = "tcp"
      cidr_blocks = ["0.0.0.0/0"]
    },
  ]
}
*/