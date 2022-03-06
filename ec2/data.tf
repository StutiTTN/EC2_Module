data "aws_vpc" "default" {
filter {
name = "isDefault"
values = ["true"]
}
}

#Getting subnets data
data "aws_subnet_ids" "subnets" {
vpc_id = data.aws_vpc.default.id
}

