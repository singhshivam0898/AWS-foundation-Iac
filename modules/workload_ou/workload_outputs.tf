output "ou_id" {
  description = "OU ID"
  value       = aws_organizations_organizational_unit.ou.id
}

output "prod_account_id" {
  description = "ID of the prod account"
  value       = aws_organizations_account.prod_account.id
}

output "non_prod_account_id" {
  description = "ID of the non-prod account"
  value       = aws_organizations_account.non_prod_account.id
}
