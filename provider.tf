provider "vault" {
  address = "https://vault-test-cluster.vault.4edd11ce-3831-4b19-b273-112c96dc7cdc.aws.hashicorp.cloud:8200"
  token = "s.5DXutjl5v9DeNkDhWG5wMN2j.Q0Pfa"
}
resource "vault_aws_secret_backend" "aws" {
  access_key = AKIAWW5WFTPHQMWUSGO5
  secret_key = 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
  default_lease_ttl_seconds = "120"
  max_lease_ttl_seconds     = "240"
}
provider "aws" {
  region  = "ap-southeast-1"
  access_key = "data.vault_aws_access_credentials.creds.access_key"
  secret_key = "data.vault_aws_access_credentials.creds.secret_key"

  default_tags {
    tags = {
      Environment = "hack-hash"
      Terraform   = "true"
    }
  }
}
