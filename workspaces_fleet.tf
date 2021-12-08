module "fleet_workspaces" {
  count  = "${length(var.workspaces_usernames)}"
  source = "./terraform-aws-modules/workspaces/"


  directory_id          = aws_workspaces_directory.this.id
  bundle_id             = data.aws_workspaces_bundle.custom_windows_10.id # Windows 10 
  user_name             = "${element(var.workspaces_usernames, count.index)}"
  

  #workspace_properties

  compute_type_name    = var.compute_type_name
  user_volume_size_gib = var.user_volume
  root_volume_size_gib = var.root_volume
  running_mode         = var.running_mode
}
