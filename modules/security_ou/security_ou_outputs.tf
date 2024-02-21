output "ou_id" {
  description = "OU ID"
  value       = aws_organizations_organizational_unit.ou.id
}

output "log_archive_account_id" {
  description = "ID of the Log Archive account"
  value       = aws_organizations_account.log_archive_account.id
}

output "security_tooling_account_id" {
  description = "ID of the Security Tooling account"
  value       = aws_organizations_account.security_tooling_account.id
}
