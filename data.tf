data "aws_availability_zones" "available" {
  state = "available"
}

data "aws_vpc" "dflt" {
  default = true
}

data "aws_route_table" "main" {
  vpc_id = data.aws_vpc.dflt.id
  filter {
    name = "association.main"
    values = ["true"]
  }
}