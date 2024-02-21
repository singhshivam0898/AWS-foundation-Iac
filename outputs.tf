output "infra_ou_id" {
  description = "OU ID for Infra OU"
  value       = module.infra_ou.ou_id
}

output "workload_ou_id" {
  description = "OU ID for WorkLoad OU"
  value       = module.workload_ou.ou_id
}

output "security_ou_id" {
  description = "OU ID for Security OU"
  value       = module.security_ou.ou_id
}

output "prod_account_id" {
  description = "ID of the prod account in WorkLoad OU"
  value       = module.workload_ou.prod_account_id
}

output "non_prod_account_id" {
  description = "ID of the non-prod account in WorkLoad OU"
  value       = module.workload_ou.non_prod_account_id
}

output "log_archive_account_id" {
  description = "ID of the Log Archive account in Security OU"
  value       = module.security_ou.log_archive_account_id
}

output "security_tooling_account_id" {
  description = "ID of the Security Tooling account in Security OU"
  value       = module.security_ou.security_tooling_account_id
}
