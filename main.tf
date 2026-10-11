data "oci_devops_repository_mirror_records" "devops_repository_mirror_records_lookup" {
  for_each = var.devops_repository_mirror_records_lookup

  repository_id = each.value.repository_id

  dynamic "filter" {
    for_each = each.value.filter != null ? each.value.filter : []
    content {
      name   = filter.value.name
      regex  = filter.value.regex
      values = filter.value.values
    }
  }
}

