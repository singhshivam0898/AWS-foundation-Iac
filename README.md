# AWS Organization Terraform Configuration

This Terraform project sets up an AWS Organization with multiple Organizational Units (OUs), each containing specific accounts. The structure includes separate OUs for Infrastructure (Infra), Workloads (WorkLoad), Security (Security), and a Sandbox OU.

## Directory Structure

```plaintext
/terraform
  /modules
    /infra_ou
      main.tf
      variables.tf
      outputs.tf
    /workload_ou
      main.tf
      variables.tf
      outputs.tf
    /security_ou
      main.tf
      variables.tf
      outputs.tf
    /sandbox_ou
      main.tf
      variables.tf
      outputs.tf
  main.tf
  variables.tf
  outputs.tf

![Alt text](image.png)
