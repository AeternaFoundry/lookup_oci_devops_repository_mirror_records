variable "devops_repository_mirror_records_lookup" {
  description = <<EOT
Map of devops_repository_mirror_records_lookup, attributes below
Required:
    - repository_id
Optional:
    - filter (block):
        - name (required)
        - regex (optional)
        - values (required)
EOT

  type = map(object({
    repository_id = string
    filter = optional(list(object({
      name   = string
      regex  = optional(bool)
      values = list(string)
    })))
  }))
}

