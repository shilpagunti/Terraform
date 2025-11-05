output "vpc_id" {
    value  =  aws_vpc.main.id
}

output "azs" {
    value = data.aws_availability_zones.available.names
}

output "public_subnet_ids" {
    value = aws_subnet.public[*].id
}

output "private_subnet_ids" {
    value = aws_subnet.private[*].id
}

output "private_database_ids" {
    value = aws_subnet.database[*].id
}