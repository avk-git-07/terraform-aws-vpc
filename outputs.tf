output "vpc_id" {
  value = aws_vpc.main.id
}

output "az_list" {
  value = data.aws_availability_zones.available
}


# output "default_vpc_route_table_info" {
#   value = data.aws_route_table.main
# }