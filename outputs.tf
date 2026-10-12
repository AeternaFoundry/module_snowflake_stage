output "stages_id" {
  description = "Map of id values across all stages, keyed the same as var.stages except keys with no id are omitted"
  value       = { for k, v in snowflake_stage.stages : k => v.id if v.id != null && length(v.id) > 0 }
}
output "stages_aws_external_id" {
  description = "Map of aws_external_id values across all stages, keyed the same as var.stages except keys with no aws_external_id are omitted"
  value       = { for k, v in snowflake_stage.stages : k => v.aws_external_id if v.aws_external_id != null && length(v.aws_external_id) > 0 }
}
output "stages_comment" {
  description = "Map of comment values across all stages, keyed the same as var.stages except keys with no comment are omitted"
  value       = { for k, v in snowflake_stage.stages : k => v.comment if v.comment != null && length(v.comment) > 0 }
}
output "stages_copy_options" {
  description = "Map of copy_options values across all stages, keyed the same as var.stages except keys with no copy_options are omitted"
  value       = { for k, v in snowflake_stage.stages : k => v.copy_options if v.copy_options != null && length(v.copy_options) > 0 }
}
output "stages_credentials" {
  description = "Map of credentials values across all stages, keyed the same as var.stages except keys with no credentials are omitted"
  value       = { for k, v in snowflake_stage.stages : k => v.credentials if v.credentials != null && length(v.credentials) > 0 }
  sensitive   = true
}
output "stages_database" {
  description = "Map of database values across all stages, keyed the same as var.stages except keys with no database are omitted"
  value       = { for k, v in snowflake_stage.stages : k => v.database if v.database != null && length(v.database) > 0 }
}
output "stages_directory" {
  description = "Map of directory values across all stages, keyed the same as var.stages except keys with no directory are omitted"
  value       = { for k, v in snowflake_stage.stages : k => v.directory if v.directory != null && length(v.directory) > 0 }
}
output "stages_encryption" {
  description = "Map of encryption values across all stages, keyed the same as var.stages except keys with no encryption are omitted"
  value       = { for k, v in snowflake_stage.stages : k => v.encryption if v.encryption != null && length(v.encryption) > 0 }
}
output "stages_file_format" {
  description = "Map of file_format values across all stages, keyed the same as var.stages except keys with no file_format are omitted"
  value       = { for k, v in snowflake_stage.stages : k => v.file_format if v.file_format != null && length(v.file_format) > 0 }
}
output "stages_fully_qualified_name" {
  description = "Map of fully_qualified_name values across all stages, keyed the same as var.stages except keys with no fully_qualified_name are omitted"
  value       = { for k, v in snowflake_stage.stages : k => v.fully_qualified_name if v.fully_qualified_name != null && length(v.fully_qualified_name) > 0 }
}
output "stages_name" {
  description = "Map of name values across all stages, keyed the same as var.stages except keys with no name are omitted"
  value       = { for k, v in snowflake_stage.stages : k => v.name if v.name != null && length(v.name) > 0 }
}
output "stages_schema" {
  description = "Map of schema values across all stages, keyed the same as var.stages except keys with no schema are omitted"
  value       = { for k, v in snowflake_stage.stages : k => v.schema if v.schema != null && length(v.schema) > 0 }
}
output "stages_snowflake_iam_user" {
  description = "Map of snowflake_iam_user values across all stages, keyed the same as var.stages except keys with no snowflake_iam_user are omitted"
  value       = { for k, v in snowflake_stage.stages : k => v.snowflake_iam_user if v.snowflake_iam_user != null && length(v.snowflake_iam_user) > 0 }
}
output "stages_storage_integration" {
  description = "Map of storage_integration values across all stages, keyed the same as var.stages except keys with no storage_integration are omitted"
  value       = { for k, v in snowflake_stage.stages : k => v.storage_integration if v.storage_integration != null && length(v.storage_integration) > 0 }
}
output "stages_tag" {
  description = "Map of tag values across all stages, keyed the same as var.stages except keys with no tag are omitted"
  value       = { for k, v in snowflake_stage.stages : k => v.tag if v.tag != null && length(v.tag) > 0 }
}
output "stages_url" {
  description = "Map of url values across all stages, keyed the same as var.stages except keys with no url are omitted"
  value       = { for k, v in snowflake_stage.stages : k => v.url if v.url != null && length(v.url) > 0 }
}

