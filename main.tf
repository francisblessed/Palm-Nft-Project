module "ec2" {
  source = "terraform-aws-modules/ec2-instance/aws"
  name = var.ec2_name
  count                       = var.count_

  ami                         = "ami-04f1014c8adcfa670"
  instance_type               = "t2.medium"
  availability_zone           = var.availability_zone[count.index]
  subnet_id                   = var.vpc_private_subnets[count.index]
  vpc_security_group_ids      = [aws_security_group.ipfs.id]
  associate_public_ip_address = false

  tags = var.vpc_tags
}

resource "aws_volume_attachment" "ebs_attachment" {
  volume_id   = aws_ebs_volume.ebs_volume[count.index].id
  instance_id = module.ec2.instance_ids [count.index]
  device_name = ["/dev/sdf", "/dev/sdg", "/dev/sdh"]
  count = 3
}

resource "aws_ebs_volume" "ebs_volume" {
  availability_zone = var.availability_zone[count.index]
  size              = 100
  count             = 3
}

module "my_keypair" {
  source       = "./ipfs-keypair"
  keypair_name = "ipfs-keypair-name"
  public_key_path = "/path/to/public/key.pub"
}
