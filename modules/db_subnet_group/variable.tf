variable "name" {
  type    = string
  default = "my-db-subnet-group"
}

variable "description" {
  type    = string
  default = "subnetgroup of rdss"
}

variable "subnet_ids" {
  type    = list(string)
  default = ["subnet-0a8fc91b7a9043e29", "subnet-040b9382a8253e6d0"]
}

variable "tags" {
  type    = map(string)
  default = {
    Name        = "my-db-subnet-group"
     Environment = "prod"
     
  }
}