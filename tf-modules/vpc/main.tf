provider "aws" {
  region = var.region
}

resource "aws_vpc" "codegroup_vpc" {
  cidr_block           = var.vpc_cidr
  enable_dns_support   = true
  enable_dns_hostnames = true
  tags = {
    Name = var.vpc_name
  }
}

resource "aws_internet_gateway" "codegroup_igw" {
  vpc_id = aws_vpc.main.id
  tags = {
    Name = var.igw_name
  }
}

resource "aws_subnet" "codegroup_subnet_public" {
  for_each = { for idx, cidr in var.public_subnets : idx => cidr }
  
  vpc_id                  = aws_vpc.main.id
  cidr_block              = each.value
  map_public_ip_on_launch = true
  availability_zone       = "${var.region}${each.key}"
  tags = {
    Name = "${var.public_subnets_names}-${each.key}"
  }
}

resource "aws_subnet" "codegroup_subnet_private" {
  for_each = { for idx, cidr in var.private_subnets : idx => cidr }

  vpc_id            = aws_vpc.main.id
  cidr_block        = each.value
  availability_zone = "${var.region}${each.key}"
  tags = {
    Name = "${var.private_subnets_names}-${each.key}"
  }
}

resource "aws_route_table" "codegroup_rt_public" {
  vpc_id = aws_vpc.main.id
  tags = {
    Name = var.public_rt_name
  }
}

resource "aws_route" "codegroup_route_public" {
  route_table_id         = aws_route_table.public.id
  destination_cidr_block = "0.0.0.0/0"
  gateway_id             = aws_internet_gateway.igw.id
}

resource "aws_route_table_association" "codegroup_rt_public_association" {
  for_each       = aws_subnet.public
  subnet_id      = each.value.id
  route_table_id = aws_route_table.public.id
}

resource "aws_route_table" "codegroup_rt_private" {
  vpc_id = aws_vpc.main.id
  tags = {
    Name = var.private_rt_name
  }
}

resource "aws_route_table_association" "codegroup_rt_private_association" {
  for_each       = aws_subnet.private
  subnet_id      = each.value.id
  route_table_id = aws_route_table.private.id
}