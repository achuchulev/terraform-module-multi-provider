provider "aws" {
  alias  = "east"
  region = "us-east-1"
  
  access_key = var.aws_access_key
  secret_key = var.aws_secret_key
}

provider "aws" {
  alias  = "west"
  region = "us-west-1"
  
  access_key = var.aws_access_key
  secret_key = var.aws_secret_key
}

module "vpc_east" {
  source    = "./vpc"
  providers = {
    aws = aws.east
  }
  cidr = "10.10.0.0/16"
  vpc_name_tag = "east"
}

module "vpc_west" {
  source    = "./vpc"
  providers = {
    aws = aws.west
  }
  cidr = "10.20.0.0/16"
  vpc_name_tag = "west"
}
