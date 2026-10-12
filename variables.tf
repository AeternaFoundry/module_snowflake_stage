variable "stages" {
  description = <<EOT
Map of stages, attributes below
Required:
    - database
    - name
    - schema
Optional:
    - aws_external_id
    - comment
    - copy_options
    - credentials
    - directory
    - encryption
    - file_format
    - snowflake_iam_user
    - storage_integration
    - url
    - tag (block):
        - database (optional)
        - name (required)
        - schema (optional)
        - value (required)
    - timeouts (block):
        - create (optional)
        - delete (optional)
        - read (optional)
        - update (optional)
EOT

  type = map(object({
    database            = string
    name                = string
    schema              = string
    aws_external_id     = optional(string)
    comment             = optional(string)
    copy_options        = optional(string)
    credentials         = optional(string)
    directory           = optional(string)
    encryption          = optional(string)
    file_format         = optional(string)
    snowflake_iam_user  = optional(string)
    storage_integration = optional(string)
    url                 = optional(string)
    tag = optional(list(object({
      database = optional(string)
      name     = string
      schema   = optional(string)
      value    = string
    })))
    timeouts = optional(object({
      create = optional(string)
      delete = optional(string)
      read   = optional(string)
      update = optional(string)
    }))
  }))
}

