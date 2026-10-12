resource "snowflake_stage" "stages" {
  for_each = var.stages

  database            = each.value.database
  name                = each.value.name
  schema              = each.value.schema
  aws_external_id     = each.value.aws_external_id
  comment             = each.value.comment
  copy_options        = each.value.copy_options
  credentials         = each.value.credentials
  directory           = each.value.directory
  encryption          = each.value.encryption
  file_format         = each.value.file_format
  snowflake_iam_user  = each.value.snowflake_iam_user
  storage_integration = each.value.storage_integration
  url                 = each.value.url

  dynamic "tag" {
    for_each = each.value.tag != null ? each.value.tag : []
    content {
      database = tag.value.database
      name     = tag.value.name
      schema   = tag.value.schema
      value    = tag.value.value
    }
  }

  dynamic "timeouts" {
    for_each = each.value.timeouts != null ? [each.value.timeouts] : []
    content {
      create = timeouts.value.create
      delete = timeouts.value.delete
      read   = timeouts.value.read
      update = timeouts.value.update
    }
  }
}

