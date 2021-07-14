provider "aws" {
  assume_role {
    role_arn = "arn:aws:iam::${var.account_id}:role/${var.assume_role}"
  }
}

provider "aws" {
  alias = "organization"

  assume_role {
    role_arn = "arn:aws:iam::${data.aws_organizations_organization.current.master_account_id}:role/${var.assume_role}"
  }
}

data "aws_organizations_organization" "current" {}

data "aws_organizations_organization" "master" {
  provider = "aws.organization"
}

data "aws_caller_identity" "current" {}


