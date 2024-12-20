region = "us-east-1"
vpc_cidr = "10.0.0.0/16"
vpc_name = "codegroup-vpc"
public_subnets_names = "codegroup-public-subnet"
private_subnets_names = "codegroup-private-subnet"
public_rt_name = "codegroup-public-rt"
private_rt_name = "codegroup-private-rt"
igw_name = "codegroup-igw"

public_subnets = {
  "public_subnet_01" = "10.0.1.0/24"
  "public_subnet_02" = "10.0.2.0/24"
}

private_subnets = {
  "private_subnet_01" = "10.0.3.0/24"
  "private_subnet_02" = "10.0.4.0/24"
}