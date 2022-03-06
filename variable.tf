variable "ami_id" {
    type = string
    default = "ami-0851b76e8b1bce90b"
}

variable "user_data_filename" {
    type = string
    default = "files/script-user.sh"
}

variable "role_policy_filename" {
    type = string
    default = "files/iam-role-policy.json"
}
