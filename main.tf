resource "newrelic_cloud_aws_link_account" "cloud_aws_link_accounts" {
  for_each = var.cloud_aws_link_accounts

  arn                    = each.value.arn
  name                   = each.value.name
  account_id             = each.value.account_id
  metric_collection_mode = each.value.metric_collection_mode
}

