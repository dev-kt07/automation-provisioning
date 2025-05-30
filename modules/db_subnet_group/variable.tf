
variable "name" {
  type    = string
  default = "my-db-subnet-group"
}

variable "description" {
  type    = string
  default = "subnetgroup of rdss"
}

variable "subnet_ids" {
  type = list(string)
  default = ["subnet-0be48a5104a8719db", "subnet-0c2ef04047ae31018"]
  
}

variable "tags" {
  type = map(string)
  default = {
    Name        = "my-db-subnet-group"
    Environment = "production"
    Team        = "devops"
    Project     = "rds-mysql"
  }
}
