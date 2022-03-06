resource "aws_iam_role" "test_role" {
name = var.role_name

assume_role_policy = jsonencode({
Version = "2012-10-17"
Statement = [
{
Action = "sts:AssumeRole"
Effect = "Allow"
Sid = ""
Principal = {
Service = "ec2.amazonaws.com"
}
},
]
})

inline_policy {
name = "${var.role_name}Policy"
policy = var.role_policy
}
}

resource "aws_iam_instance_profile" "instance_profile" {
name = "${var.role_name}InstanceProfile"
role = var.role_name
}

