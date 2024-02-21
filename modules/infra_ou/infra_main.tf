provider "aws" {
  region = var.region
}

resource "aws_organizations_organizational_unit" "ou" {
  name      = var.ou_name
  parent_id = var.parent_id

  tags = {
    Environment = var.ou_tags["Environment"]
  }
}

