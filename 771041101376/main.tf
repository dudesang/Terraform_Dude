## Locals
#########################################################################################
locals {
  tags = "${merge(var.base_tags)}"

  account_emails = "${zipmap(
    data.aws_organizations_organization.master.accounts.*.id,
    data.aws_organizations_organization.master.accounts.*.email,
  )}"

  account_names = "${zipmap(
    data.aws_organizations_organization.master.accounts.*.id,
    data.aws_organizations_organization.master.accounts.*.name,
  )}"
}

## Shared Variables
#########################################################################################
module "shared" {
  source = "../modules/SharedVariables"
}

## Ally-ADFSP-SAML provider
#########################################################################################
resource "aws_iam_saml_provider" "Ally-ADFSP-SAML" {
  name                   = "Ally-ADFSP"
  saml_metadata_document = "${file("${path.module}/../files/Ally-ADFSP-SAML.xml")}"
}
