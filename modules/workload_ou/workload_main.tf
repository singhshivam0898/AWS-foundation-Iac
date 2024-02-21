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

resource "aws_organizations_account" "prod_account" {
  name  = "prod"
  email = "prod@example.com"
  parent_id = aws_organizations_organizational_unit.ou.id
}

resource "aws_organizations_account" "non_prod_account" {
  name  = "non-prod"
  email = "non-prod@example.com"
  parent_id = aws_organizations_organizational_unit.ou.id
}
