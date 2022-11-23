#Input variables

#AWS region
variable "aws_region" {
  description = "Region in which AWS resources to be created"
  type = string
  default = "us-east-1"
}

# Environmental variable
variable "environment" {
  description = "Environment Variable used as a prefix"
  type = string
  default = "dev"
}

#Business division
variable "business_division" {
  description = "Business Division in the large organization this Infrastructure belongs"
  type = string
  default = "SAP"
}