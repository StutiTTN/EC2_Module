variable "ec2" {
type = string
default = "t2.micro"
}

variable "role_name" {
type = string
description = "Name of EC2 Role"
default = "EC2CustomRole"
}

variable "role_policy" {
type = string
description = "Inline Policy for the EC2 Role"
}

variable "user_data" {
type = string
description = "User data for the instance"
}

