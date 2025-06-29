
variable "vpc_cidr" {
  type        = string
  description = "CIDR block for the VPC"
  default     = "10.1.0.0/16"
}

variable "public_subnets" {
  type        = list(string)
  description = "List of public subnet CIDRs"
  default = [ "10.1.1.0/24", "10.1.2.0/24" ]
}

variable "private_subnets" {
  type        = list(string)
  description = "List of private subnet CIDRs"
  default     = [ "10.1.101.0/24", "10.1.102.0/24" ]
}

variable "availability_zones" {
  type        = list(string)
  description = "List of availability zones"
  default     = [ "ap-south-1a", "ap-south-1b" ]
}
variable "env" {
  type        = string
  default     = "dev"
  description = "Environment name (e.g., dev, prod)"
}

variable "project" {
  type        = string
  default     = "myapp"
  description = "Project name or app name"
}

variable "create_nat_gateway" {
  type        = bool
  default     = true
  description = "Whether to create NAT Gateway"
}
