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
    security_groups = [aws_security_group.access_ssh.name, 
                        aws_security_group.access_app_port.name, 
                        aws_security_group.access_db_port.name,
                        aws_security_group.access_http.name,
                        aws_security_group.access_https.name]
    tags = {
        name = "Django App"
    }
}

output "IP_publico" {
    value = aws_instance.djangoapp_server.public_ip
}