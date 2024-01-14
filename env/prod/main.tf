module "aws-prod" {
  source     = "../../infra"
  instancia  = "t2.micro"
  regiao_aws = "us-east-1"
  chave      = "ec2-east1"
  env        = "prod"
}

output "IP" {
  value = module.aws-prod.IP_publico
}
