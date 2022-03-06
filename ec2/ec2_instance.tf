resource "aws_instance" "nginx_ec2" {
ami = "ami-0851b76e8b1bce90b"
instance_type = var.ec2
iam_instance_profile = aws_iam_instance_profile.instance_profile.name
user_data = var.user_data
security_groups = [aws_security_group.sg_nginx.id]
subnet_id = "subnet-b57782de"
tags = {
    Name = "Nginx-ec2"
    Environment = "Nginx-web"
}
}


