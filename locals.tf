locals {
  rsc_name = "${var.proj_name}-${var.env}"
  az_names = slice(data.aws_availability_zones.available.names, 0, 2)
}
