variable "account_id" {
  description = "Account identifier"
}

variable "assume_role" {
  description = "Name of assumed role for additional provider initialization"
  default     = "CloudCoreAdmin"
}

variable "base_tags" {
  type        = "map"
  description = "Map of tags common to all environments"

  default = {
    Terraform = "True"
  }
}
