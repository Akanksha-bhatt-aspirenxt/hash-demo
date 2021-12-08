data "aws_workspaces_bundle" "admin_windows_10" {
  bundle_id = var.admin_bundle_id # Value with Windows 10 (English)
}

data "vault_aws_access_credentials" "creds" {
  backend = "aws"
  role = "accessrole"
}
