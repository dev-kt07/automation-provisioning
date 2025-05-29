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
    Name = "MyEC2Instance"
  }
}
