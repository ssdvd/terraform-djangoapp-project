# Selecionando o provedor cloud
terraform {
    required_providers {
        aws = {
            source  = "hashicorp/aws"
            version = "~> 3.27"
        }
    }

    required_version = ">= 0.14.9"
}

# Configurando o provedor
provider "aws" {
    profile = "default"
    region  = var.regiao_aws
}

# Selecionando os recursos
resource "aws_instance" "djangoapp_server" {
    ami             = "ami-0c7217cdde317cfec"
    instance_type   = var.instancia
    key_name = var.chave
    security_groups = [aws_security_group.acesso_ssh.name, aws_security_group.acesso_app_port.name, aws_security_group.acesso_db_port.name]
    tags = {
        name = "Django App"
    }
}

output "IP_publico" {
    value = aws_instance.djangoapp_server.public_ip
}