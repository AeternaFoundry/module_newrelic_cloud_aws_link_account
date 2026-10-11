output "cloud_aws_link_accounts_id" {
  description = "Map of id values across all cloud_aws_link_accounts, keyed the same as var.cloud_aws_link_accounts except keys with no id are omitted"
  value       = { for k, v in newrelic_cloud_aws_link_account.cloud_aws_link_accounts : k => v.id if v.id != null && length(v.id) > 0 }
}
output "cloud_aws_link_accounts_account_id" {
  description = "Map of account_id values across all cloud_aws_link_accounts, keyed the same as var.cloud_aws_link_accounts except keys with no account_id are omitted"
  value       = { for k, v in newrelic_cloud_aws_link_account.cloud_aws_link_accounts : k => v.account_id if v.account_id != null }
}
output "cloud_aws_link_accounts_arn" {
  description = "Map of arn values across all cloud_aws_link_accounts, keyed the same as var.cloud_aws_link_accounts except keys with no arn are omitted"
  value       = { for k, v in newrelic_cloud_aws_link_account.cloud_aws_link_accounts : k => v.arn if v.arn != null && length(v.arn) > 0 }
}
output "cloud_aws_link_accounts_metric_collection_mode" {
  description = "Map of metric_collection_mode values across all cloud_aws_link_accounts, keyed the same as var.cloud_aws_link_accounts except keys with no metric_collection_mode are omitted"
  value       = { for k, v in newrelic_cloud_aws_link_account.cloud_aws_link_accounts : k => v.metric_collection_mode if v.metric_collection_mode != null && length(v.metric_collection_mode) > 0 }
}
output "cloud_aws_link_accounts_name" {
  description = "Map of name values across all cloud_aws_link_accounts, keyed the same as var.cloud_aws_link_accounts except keys with no name are omitted"
  value       = { for k, v in newrelic_cloud_aws_link_account.cloud_aws_link_accounts : k => v.name if v.name != null && length(v.name) > 0 }
}

