resource "aws_security_group" "sg_nginx" {
name = "sg_nginx"

ingress {
from_port = 80
to_port = 80
protocol = "tcp"
cidr_blocks = ["0.0.0.0/0"]
}
egress {
from_port = 0
to_port = 0
protocol = "-1"
cidr_blocks = ["0.0.0.0/0"]
}
tags = {
Name = "sg_nginx"
Environment = "Nginx-Web"
}
}

