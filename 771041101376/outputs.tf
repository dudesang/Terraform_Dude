output "account_id" {
  value = "${data.aws_caller_identity.current.account_id}"
}

output "id" {
  value = "${data.aws_caller_identity.current.account_id}"
}

output "name" {
  value = "${lookup(local.account_names, data.aws_caller_identity.current.account_id)}"
}

output "email" {
  value = "${lookup(local.account_emails, data.aws_caller_identity.current.account_id)}"
}

output "detectors" {
  value = "${module.CloudCoreGuard.detectors}"
}
