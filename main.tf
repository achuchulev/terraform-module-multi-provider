provider "aws" {
  alias  = "east"
  region = "us-east-1"
}

provider "aws" {
  alias  = "west"
  region = "us-west-1"
}

module "vpc_east" {
  source    = "./vpc"
  providers = {
    aws = "aws.east"
  }
}

module "vpc_west" {
  source    = "./vpc"
  providers = {
    aws = "aws.west"
  }
}
