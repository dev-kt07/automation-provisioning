provider "aws" {
  region = "ap-south-1"
}

module "ec2_instance" {
  source             = "./modules/ec2"
  ami                = "ami-06b6e5225d1db5f46" # example Amazon Linux 2 AMI
  instance_type      = "t2.micro"
  key_name           = "github-action"
  subnet_id          = "subnet-075bb40922d89bb13"
  security_group_ids = ["sg-0e584f891639bbf98"]
  tags = {
    Name = "rds-mysql"
  }
}

module "s3_bucket" {
  source            = "./modules/s3_bucket"
  bucket_name       = "bombay-saphire-123"
  enable_versioning = true
  enable_encryption = true

  tags = {
    Environment = "dev"
    Project     = "s3-module-demo"
  }
}
module "vpc" {
  source             = "./modules/vpc"
  vpc_cidr           = "10.1.0.0/16"
  public_subnets     = ["10.1.1.0/24", "10.1.2.0/24"]
  private_subnets    = ["10.1.101.0/24", "10.1.102.0/24"]
  availability_zones = ["ap-south-1a", "ap-south-1b"]
}

module "db_subnet_group" {
  source = "./modules/db_subnet_group"  # or a registry source
  name        = "my-db-subnet-group"
  description = "Subnet group for RDS"
  subnet_ids  = ["subnet-0a8fc91b7a9043e29", "subnet-040b9382a8253e6d0"]
  tags = {
    Environment = "prod"
  }
}