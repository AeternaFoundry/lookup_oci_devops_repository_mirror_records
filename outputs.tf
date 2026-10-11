output "devops_repository_mirror_records_lookup_id" {
  description = "Map of id values across all devops_repository_mirror_records_lookup, keyed the same as var.devops_repository_mirror_records_lookup except keys with no id are omitted"
  value       = { for k, v in data.oci_devops_repository_mirror_records.devops_repository_mirror_records_lookup : k => v.id if v.id != null && length(v.id) > 0 }
}
output "devops_repository_mirror_records_lookup_filter" {
  description = "Map of filter values across all devops_repository_mirror_records_lookup, keyed the same as var.devops_repository_mirror_records_lookup except keys with no filter are omitted"
  value       = { for k, v in data.oci_devops_repository_mirror_records.devops_repository_mirror_records_lookup : k => v.filter if v.filter != null && length(v.filter) > 0 }
}
output "devops_repository_mirror_records_lookup_repository_id" {
  description = "Map of repository_id values across all devops_repository_mirror_records_lookup, keyed the same as var.devops_repository_mirror_records_lookup except keys with no repository_id are omitted"
  value       = { for k, v in data.oci_devops_repository_mirror_records.devops_repository_mirror_records_lookup : k => v.repository_id if v.repository_id != null && length(v.repository_id) > 0 }
}
output "devops_repository_mirror_records_lookup_repository_mirror_record_collection" {
  description = "Map of repository_mirror_record_collection values across all devops_repository_mirror_records_lookup, keyed the same as var.devops_repository_mirror_records_lookup except keys with no repository_mirror_record_collection are omitted"
  value       = { for k, v in data.oci_devops_repository_mirror_records.devops_repository_mirror_records_lookup : k => v.repository_mirror_record_collection if v.repository_mirror_record_collection != null && length(v.repository_mirror_record_collection) > 0 }
}

