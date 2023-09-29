provider "aws" {
  region = var.region
}

# create an SSH key 

resource "aws_key_pair" "sshkeypair" {
  key_name   = var.sshkey_name
  public_key = file(var.pubkey)
}

# create ec2

resource "aws_instance" "openbsd" {
  ami           = var.image_id
  instance_type = var.ec2type
  key_name      = aws_key_pair.sshkeypair.key_name
  root_block_device {
    volume_size = var.volsize
    volume_type = var.voltype
  }
}
