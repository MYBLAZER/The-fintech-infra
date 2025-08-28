terraform {
  required_version = ">=0.12.0"
  backend "s3" {
    key            = "prod2/terraform.state"
    bucket         = "state-storage-36"
    region         = "us-east-1"
    dynamodb_table = "State-Lock-36"
  }
}
