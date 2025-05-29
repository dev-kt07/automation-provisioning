variable "ami" {
  type        = string
  description = "AMI ID to use for the instance"
  default     = "ami-06b6e5225d1db5f46"
}

variable "instance_type" {
  type        = string
  description = "Type of EC2 instance"
  default     = "automation-provisiong"
}

variable "key_name" {
  type        = string
  description = "Key pair name for SSH access"
  default     = "github-action"
}

variable "subnet_id" {
  type        = string
  description = "Subnet ID"
  default     = "subnet-075bb40922d89bb13"
}

variable "security_group_ids" {
  type        = list(string)
  description = "List of security group IDs"
  default     = ["sg-0e584f891639bbf98"]
}

variable "tags" {
  type        = map(string)
  description = "Tags to apply to the instance"
  default = {
    Name = "MYEC2INSTANCE"
  }
}
