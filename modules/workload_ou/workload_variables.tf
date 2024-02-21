variable "region" {
  description = "AWS region"
}

variable "ou_name" {
  description = "OU name"
  type        = string
}

variable "parent_id" {
  description = "Parent OU ID"
  type        = string
}

variable "ou_tags" {
  description = "OU tags"
  type        = map(string)
}
