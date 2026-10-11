output "kms_ekms_private_endpoints_lookup_id" {
  description = "Map of id values across all kms_ekms_private_endpoints_lookup, keyed the same as var.kms_ekms_private_endpoints_lookup except keys with no id are omitted"
  value       = { for k, v in data.oci_kms_ekms_private_endpoints.kms_ekms_private_endpoints_lookup : k => v.id if v.id != null && length(v.id) > 0 }
}
output "kms_ekms_private_endpoints_lookup_compartment_id" {
  description = "Map of compartment_id values across all kms_ekms_private_endpoints_lookup, keyed the same as var.kms_ekms_private_endpoints_lookup except keys with no compartment_id are omitted"
  value       = { for k, v in data.oci_kms_ekms_private_endpoints.kms_ekms_private_endpoints_lookup : k => v.compartment_id if v.compartment_id != null && length(v.compartment_id) > 0 }
}
output "kms_ekms_private_endpoints_lookup_ekms_private_endpoints" {
  description = "Map of ekms_private_endpoints values across all kms_ekms_private_endpoints_lookup, keyed the same as var.kms_ekms_private_endpoints_lookup except keys with no ekms_private_endpoints are omitted"
  value       = { for k, v in data.oci_kms_ekms_private_endpoints.kms_ekms_private_endpoints_lookup : k => v.ekms_private_endpoints if v.ekms_private_endpoints != null && length(v.ekms_private_endpoints) > 0 }
}
output "kms_ekms_private_endpoints_lookup_filter" {
  description = "Map of filter values across all kms_ekms_private_endpoints_lookup, keyed the same as var.kms_ekms_private_endpoints_lookup except keys with no filter are omitted"
  value       = { for k, v in data.oci_kms_ekms_private_endpoints.kms_ekms_private_endpoints_lookup : k => v.filter if v.filter != null && length(v.filter) > 0 }
}

