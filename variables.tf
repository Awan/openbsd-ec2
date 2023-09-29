variable "region" {
  description = "region where you want to create the resources"
  default     = "eu-west-2"
}

variable "pubkey" {
  description = "SSH public key file"
  default     = "~/.ssh/id_ed25519.pub"
}

variable "sshkey_name" {
    description = "SSH key name"
    default = "mysshkey"
}

variable "ec2type" {
  description = "Instance type to create"
  default     = "t2.micro"
}

