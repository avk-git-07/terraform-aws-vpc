variable "proj_name" {
  type = string
}

variable "env" {
  type = string
}

# Optional
variable "vpc_cidr" {
  default = "10.0.0.0/16"
}

# Optional
variable "dns_hostnames" {
  default = true
}

# Optional
variable "common_tags" {
  default = {}
}

# Optional
variable "vpc_tags" {
  default = {}
}

# Optional
variable "igw_tags" {
  default = {}
}

# Optional
variable "public_subnet_tags" {
  default = {}
}

variable "public_subnet_cidrs" {
  type = list(any)
  validation {
    condition     = length(var.public_subnet_cidrs) == 2
    error_message = "Please provide 2 valid public subnet CIDRs"
  }
}

# Optional
variable "private_subnet_tags" {
  default = {}
}

variable "private_subnet_cidrs" {
  type = list(any)
  validation {
    condition     = length(var.private_subnet_cidrs) == 2
    error_message = "Please provide 2 valid public subnet CIDRs"
  }
}

# Optional
variable "database_subnet_tags" {
  default = {}
}

variable "database_subnet_cidrs" {
  type = list(any)
  validation {
    condition     = length(var.database_subnet_cidrs) == 2
    error_message = "Please provide 2 valid public subnet CIDRs"
  }
}

# Optional
variable "db_subnet_group_tags" {
  default = {}
}

# Optional
variable "route_table_tags" {
  default = {}
}

# Optional
variable "nat_gateway_tags" {
  default = {}
}

# Optional
variable "public_route_table_tags" {
  default = {}
}

variable "private_route_table_tags" {
  default = {}
}

variable "database_route_table_tags" {
  default = {}
}

variable "is_peering_required" {
  type    = bool
  default = false
}

variable "vpc_peering_tags" {
  default = {}

}
