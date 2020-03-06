output "vpc_id" {
  value = aws_vpc.new.id
}

output "vpc_name" {
  value = aws_vpc.new.tags.Name
}
