resource "aws_security_group" "access_ssh"{
    name ="access_ssh_${var.env}"
    description = "grupo ${var.env}"
    ingress{
        cidr_blocks = ["0.0.0.0/0"]
        ipv6_cidr_blocks = ["::/0"]
        from_port = 22
        to_port = 22
        protocol = "tcp"
    }
    tags = {
        Name = "access_ssh_${var.env}"
    }
}

resource "aws_security_group" "access_app_port"{
    name ="acess_app_port_${var.env}"
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

resource "aws_security_group" "access_http"{
    name ="access_http_${var.env}"
    description = "grupo ${var.env}"
    egress{
        cidr_blocks = ["0.0.0.0/0"]
        ipv6_cidr_blocks = ["::/0"]
        from_port = 80
        to_port = 80
        protocol = "tcp"
    }
    tags = {
        Name = "access_http_${var.env}"
    }
}

resource "aws_security_group" "access_https"{
    name ="access_https_${var.env}"
    description = "grupo ${var.env}"
    egress{
        cidr_blocks = ["0.0.0.0/0"]
        ipv6_cidr_blocks = ["::/0"]
        from_port = 443
        to_port = 443
        protocol = "tcp"
    }
    tags = {
        Name = "access_https_${var.env}"
    }
}

resource "aws_security_group" "access_db_port"{
    name ="access_db_port_${var.env}"
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