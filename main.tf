provider "aws" {
  region = var.region
}

# create an SSH key 

resource "aws_key_pair" "sshkeypair" {
    key_name = var.sshkey_name
    public_key = file(var.pubkey)
}
