
module "admin_workspace" {
  source = "./terraform-aws-modules/workspaces/"

  directory_id          = aws_workspaces_directory.this.id
  bundle_id             = data.aws_workspaces_bundle.admin_windows_10.id 
  user_name             = var.admin_workspace_username
 # volume_encryption_key = var.volume_encryption_key # KMS Key

  #workspace_properties

  compute_type_name    = var.compute_type_name
  user_volume_size_gib = var.user_volume
  root_volume_size_gib = var.root_volume
  running_mode         = var.running_mode

}