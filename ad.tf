resource "aws_directory_service_directory" "simple_ad" {
  name     = "hack.test"
  password = "Aspirenxt@123"
  size     = "Small"

  vpc_settings {
    vpc_id     = module.networking.vpc_id
    subnet_ids = module.networking.private_subnets
  }


}

