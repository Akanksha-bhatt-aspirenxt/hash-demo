## AWS
variable "hash_env" {
  type        = string
  description = "environment"
  default     = "hack_test"
}

variable "region" {
  type        = string
  description = "enter the region"
  default     = "ap-southeast-1"
}

## Networking

# Vpc

variable "vpc_name" {
  type        = string
  description = "vpc name"
  default     = "hack_test"
}

variable "cidr_block" {
  type        = string
  description = "enter cidr block for vpc"
  default     = "10.20.0.0/16"
}

# Subnets

variable "public_cidr" {
  type        = list(any)
  description = "cidr block for public subnet"
  default     = ["10.20.1.0/24", "10.20.2.0/24"]
}

variable "private_cidr" {
  type        = list(any)
  description = "cidr block for private subnet"
  default     = ["10.20.11.0/24", "10.20.12.0/24"]
}

# Admin_workspaces

variable "admin_bundle_id" {
  type        = string
  description = "Bundle Id windows (Standard with Windows 10 (Server 2019 based))"
  default     = "wsb-6cbvhvv9f"
}

variable "admin_workspace_username" {
  type        = string
  description = "User Name for Admin Workspace"
  default     = "Administrator"
}



variable "compute_type_name" {
  type        = string
  description = "Compute Type Name"
  default     = "STANDARD"
}

variable "user_volume" {
  type        = string
  description = "User Volume (GB)"
  default     = "10"
}

variable "root_volume" {
  type        = string
  description = "Root Volume (GB)"
  default     = "80"
}

variable "running_mode" {
  type        = string
  description = "running mode"
  default     = "ALWAYS_ON"
}

# Fleet_of_workspaces

variable "workspaces_usernames" {
  type        = list(any)
  description = "User Name for fleet of Workspaces"
  default     = ["Akanksha", "Chandrashekhar", "Anirudh"]
}

variable "custom_bundle" {
  type        = string
  description = "Bundle Id created by Admin Workspace"
  default     = "wsb-bnsp8kfhg"
}
