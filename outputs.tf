output "cloud_aws_link_accounts_id" {
  description = "Map of id values across all cloud_aws_link_accounts, keyed the same as var.cloud_aws_link_accounts"
  value       = { for k, v in newrelic_cloud_aws_link_account.cloud_aws_link_accounts : k => v.id }
}
output "cloud_aws_link_accounts_account_id" {
  description = "Map of account_id values across all cloud_aws_link_accounts, keyed the same as var.cloud_aws_link_accounts"
  value       = { for k, v in newrelic_cloud_aws_link_account.cloud_aws_link_accounts : k => v.account_id }
}
output "cloud_aws_link_accounts_arn" {
  description = "Map of arn values across all cloud_aws_link_accounts, keyed the same as var.cloud_aws_link_accounts"
  value       = { for k, v in newrelic_cloud_aws_link_account.cloud_aws_link_accounts : k => v.arn }
}
output "cloud_aws_link_accounts_metric_collection_mode" {
  description = "Map of metric_collection_mode values across all cloud_aws_link_accounts, keyed the same as var.cloud_aws_link_accounts"
  value       = { for k, v in newrelic_cloud_aws_link_account.cloud_aws_link_accounts : k => v.metric_collection_mode }
}
output "cloud_aws_link_accounts_name" {
  description = "Map of name values across all cloud_aws_link_accounts, keyed the same as var.cloud_aws_link_accounts"
  value       = { for k, v in newrelic_cloud_aws_link_account.cloud_aws_link_accounts : k => v.name }
}

