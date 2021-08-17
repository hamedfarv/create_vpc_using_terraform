
##Here
variable "aws_access_key" {}
variable "aws_secret_key" {}
#variable "private_key_path" {}
#variable "key_name" {}
###Here


variable "aws_region" {
  type    = string
  default = "us-east-2"
}

variable "aws_account_ids" {
  type    = list
  default = null
}

terraform {
  required_version = ">= 0.12.20"
}

provider "aws" {
  region = var.aws_region
  access_key = var.aws_access_key ##"AKIAS77ANLP6BZSSAFZU" ##here
  secret_key = var.aws_secret_key ##"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" ##here
  allowed_account_ids = [] ##here
  profile             = "default"
  version             = ">= 2.46.0"
}
