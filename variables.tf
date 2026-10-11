variable "cloud_aws_link_accounts" {
  description = <<EOT
Map of cloud_aws_link_accounts, attributes below
Required:
    - arn
    - name
Optional:
    - account_id
    - metric_collection_mode
EOT

  type = map(object({
    arn                    = string
    name                   = string
    account_id             = optional(number)
    metric_collection_mode = optional(string)
  }))
  validation {
    condition = alltrue([
      for k, v in var.cloud_aws_link_accounts : (
        v.metric_collection_mode == null || (contains(["PULL", "PUSH"], v.metric_collection_mode))
      )
    ])
    error_message = "must be one of: \"PULL\", \"PUSH\""
  }
}

