provider "vault" {
  address = "https://vault-test-cluster.vault.4edd11ce-3831-4b19-b273-112c96dc7cdc.aws.hashicorp.cloud:8200"
  token = "s.5DXutjl5v9DeNkDhWG5wMN2j.Q0Pfa"
}

provider "aws" {
  region  = "ap-southeast-1"
  access_key = "${data.vault_aws_access_credentials.creds.access_key}"
  secret_key = "${data.vault_aws_access_credentials.creds.secret_key}"
  skip_credentials_validation = true

  default_tags {
    tags = {
      Environment = "hack-hash"
      Terraform   = "true"
    }
  }
}
