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

resource "aws_organizations_account" "log_archive_account" {
  name  = "Log Archive"
  email = "log-archive@example.com"
  parent_id = aws_organizations_organizational_unit.ou.id
}

resource "aws_organizations_account" "security_tooling_account" {
  name  = "Security Tooling"
  email = "security-tooling@example.com"
  parent_id = aws_organizations_organizational_unit.ou.id
}
