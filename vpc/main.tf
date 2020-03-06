resource "aws_vpc" "new" {
  cidr_block       = var.cidr

  tags = {
    Name = var.vpc_name_tag
  }
}
