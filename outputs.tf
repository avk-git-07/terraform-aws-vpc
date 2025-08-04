output "vpc_id" {
    value = aws_vpc.main.id
}

output "public_subnet_ids" {
    value = aws_subnet.public[*].id
}

output "az_names" {
    value = slice(data.aws_availability_zones.available.names, 0, 2)
}

output "private_subnet_ids" {
    value = aws_subnet.private[*].id
}

output "database_subnet_ids" {
    value = aws_subnet.database[*].id
}

output "db_subnet_group_name" {
    value = aws_db_subnet_group.main.name
}

# output "default_vpc_info_cm" {
#     value = data.aws_vpc.default
# }

# output "main_route_table_info_cm" {
#     value = data.aws_route_table.main
# }