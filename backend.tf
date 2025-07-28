terraform {

  backend "s3" {
    bucket = "fusion-aws-infra-tfstate-dev01"
    key    = "terraform.tfstate"
    region = "ap-south-1"
  }
}