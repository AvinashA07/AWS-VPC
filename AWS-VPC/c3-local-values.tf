# Define local values in terraform

locals {
  owners = var.business_division
  environment = var.environment
  name = "${var.business_division}-${var.environment}"
  #name = "${locals.owners}-${locals.environment}"
  common_tags = {
    owners = local.owners
    environment = local.environment
  }
}