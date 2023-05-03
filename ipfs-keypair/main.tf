resource "aws_key_pair" "ipfs_keypair" {
  key_name   = var.keypair_name
  public_key = file(var.public_key_path)
}
variable "public_key_path" {
  type        = string
  description = "The path to the public key file"
}