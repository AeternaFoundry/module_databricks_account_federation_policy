resource "databricks_account_federation_policy" "account_federation_policies" {
  for_each = var.account_federation_policies

  description          = each.value.description
  oidc_policy          = each.value.oidc_policy
  policy_id            = each.value.policy_id
  service_principal_id = each.value.service_principal_id
}

