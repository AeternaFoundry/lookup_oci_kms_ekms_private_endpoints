data "oci_kms_ekms_private_endpoints" "kms_ekms_private_endpoints_lookup" {
  for_each = var.kms_ekms_private_endpoints_lookup

  compartment_id = each.value.compartment_id

  dynamic "filter" {
    for_each = each.value.filter != null ? each.value.filter : []
    content {
      name   = filter.value.name
      regex  = filter.value.regex
      values = filter.value.values
    }
  }
}

