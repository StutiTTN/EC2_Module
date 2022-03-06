data "local_file" "user_data_file" {
    filename = var.user_data_filename
}

data "local_file" "policy_file" {
    filename = var.role_policy_filename
}

module "ec2" {
    source = "./ec2/"
    user_data = data.local_file.user_data_file.content
    role_policy = data.local_file.policy_file.content
}
