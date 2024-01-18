variable "sg_id" {
    description = "SG for ALB"
    type = string  
}

variable "subnets" {
    description = "subnets for ALB"
    type = list(string)
}

variable "vpc_id" {
    description = "vpc for ALB"
    type = string
}

variable "instances" {
    description = "instance for ALB"
    type = list(string)
  
}