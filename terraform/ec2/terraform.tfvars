region            = "us-east-1"
vpc_id            = "vpc-12345678"
public_subnet_id  = "subnet-12345678"
ami_id            = "ami-0c55b159cbfafe1f0"
instance_type     = "t2.micro"
ec2_name          = "codegroup-ec2"
allowed_ssh_ip    = ""
sg_name           = "codegroup-ec2-sg"
s3_bucket_name    = "codegroup-ec2-bucket"
instance_role_name = "codegroup-ec2-role"
policy_name        = "s3-access-policy"