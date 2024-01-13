resource "aws_security_group" "acesso_ssh"{
    name ="acesso_ssh_${var.env}"
    description = "grupo ${var.env}"
    ingress{
        cidr_blocks = ["0.0.0.0/0"]
        ipv6_cidr_blocks = ["::/0"]
        from_port = 22
        to_port = 22
        protocol = "tcp"
    }
    tags = {
        Name = "acesso_ssh_${var.env}"
    }
}

resource "aws_security_group" "acesso_app_port"{
    name ="acesso_app_port_${var.env}"
    description = "grupo ${var.env}"
    ingress{
        cidr_blocks = ["0.0.0.0/0"]
        ipv6_cidr_blocks = ["::/0"]
        from_port = 8000
        to_port = 8000
        protocol = "tcp"
    }
    tags = {
        Name = "acesso_app_port_${var.env}"
    }
}

resource "aws_security_group" "acesso_db_port"{
    name ="acesso_db_port_${var.env}"
    description = "grupo ${var.env}"
    egress{
        cidr_blocks = ["0.0.0.0/0"]
        ipv6_cidr_blocks = ["::/0"]
        from_port = 3306
        to_port = 3306
        protocol = "tcp"
    }
    tags = {
        Name = "acesso_db_port_${var.env}"
    }
}