variable "AWS_REGION" {}

variable "PATH_TO_PRIVATE_KEY" {}

variable "PATH_TO_PUBLIC_KEY" {}

variable "AMIS" {
  type = map(string)
}

variable "MIN_SIZE" {}

variable "MAX_SIZE" {}

variable "INSTANCE_TYPE" {}

variable "VPC_CIDR" {}

variable "PUBLIC_S1_CIDR" {}

variable "PUBLIC_S2_CIDR" {}

variable "PUBLIC_S3_CIDR" {}

variable "PRIVATE_S1_CIDR" {}

variable "PRIVATE_S2_CIDR" {}

variable "PRIVATE_S3_CIDR" {}

