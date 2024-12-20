module "ec2" {
  source = "./tf-modules/ec2"

  region            = var.region
  vpc_id            = var.vpc_id
  public_subnet_id  = var.public_subnet_id
  ami_id            = var.ami_id
  instance_type     = var.instance_type
  ec2_name          = var.ec2_name
  allowed_ssh_ip    = var.allowed_ssh_ip
  sg_name           = var.sg_name
  iam_instance_profile = aws_iam_instance_profile.codegroup_ec2_instance_profile.name
}

module "s3" {
  source = "./tf-modules/s3"

  bucket_name = var.s3_bucket_name
}

resource "aws_iam_role" "codegroup_ec2_role" {
  name = var.instance_role_name

  assume_role_policy = jsonencode({
    Version = "2012-10-17",
    Statement = [
      {
        Effect = "Allow",
        Principal = {
          Service = "ec2.amazonaws.com"
        },
        Action = "sts:AssumeRole"
      }
    ]
  })
}

resource "aws_iam_policy" "codegroup_s3_access_policy" {
  name = var.policy_name

  policy = jsonencode({
    Version = "2012-10-17",
    Statement = [
      {
        Effect = "Allow",
        Action = [
          "s3:PutObject",
          "s3:GetObject",
          "s3:ListBucket"
        ],
        Resource = [
          "arn:aws:s3:::${var.s3_bucket_name}",
          "arn:aws:s3:::${var.s3_bucket_name}/*"
        ]
      }
    ]
  })
}

resource "aws_iam_role_policy_attachment" "codegroup_attach_policy" {
  role       = aws_iam_role.codegroup_ec2_role.name
  policy_arn = aws_iam_policy.codegroup_s3_access_policy.arn
}

resource "aws_iam_instance_profile" "codegroup_ec2_instance_profile" {
  name = var.instance_role_name
  role = aws_iam_role.codegroup_ec2_role.name
}

output "ec2_public_ip" {
  description = "IP público da instância EC2"
  value       = module.ec2.ec2_public_ip
}