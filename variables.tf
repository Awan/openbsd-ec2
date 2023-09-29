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
  default     = "mysshkey"
}

variable "ec2type" {
  description = "Instance type to create"
  default     = "t2.micro"
}

variable "image_id" {
  description = "AMI ID to create ec2"
  default     = "ami-0dc3ddca2954b9809"
}

variable "voltype" {
  description = "root volume type"
  default     = "gp2"
}

variable "volsize" {
  description = "root volume size in GBs"
  default     = 30
}
