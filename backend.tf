terraform {
  backend "s3" {
    bucket = "terraformbackend868410"
    key    = "terraform/ecccc2module.tfstate"
    region = "us-west-2"
    profile = "default"
    #dynamodb_table = "locking-table"
  }
}
