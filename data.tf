# Declare the data source
data "aws_availability_zones" "available" {
  state = "available"
}

# Look up the default VPC
data "aws_vpc" "default" {
  default = true
}

# Look up the main (default) route table of that VPC
data "aws_route_table" "main" {
  vpc_id = data.aws_vpc.default.id

  # This filter ensures we get the "main" (default) route table
  filter {
    name   = "association.main"
    values = ["true"]
  }
}


