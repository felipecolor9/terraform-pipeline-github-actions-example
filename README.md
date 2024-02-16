# Terraform Pipeline - Github Actions  

## PT-BR
### Sobre 
Um exemplo de pipeline com práticas de CI/CD em um projeto de Terraform responsável por criar e acessar uma instância EC2 na AWS

### O que foi feito?
* segredos 'AWS_ACCESS_KEY_ID' and 'AWS_SECRET_ACCESS_KEY' adicionados nas configurações do repositório para permitir integração com a conta Amazon AWS
* segredo 'TF_VAR_aws_key_pub' contendo chave publica adicionado para acessar a instância EC2, do tipo micro.t2 e usando Ubuntu 22.04LTS

### Actions Github
1. Terraform Plan (Inicializa o projeto e valida sua sintaxe, rodando o comando 'terraform init', 'terraform validate' e 'terraform plan'; ao commitar em uma branch local)
2. Terraform Apply & Destroy (Cria o recurso na cloud, espera 10 segundos e destroi o mesmo; Ao dar push para a 'main')
3. Terraform Destroy (Destrói o recurso na cloud, rodando o comando "terraform destroy" com o parâmetro -auto-approve; Ao executar manualmente a action)

## EN-US
### About
A pipeline example with Continuous Integration/Continuous Delivery practices for a Terraform project responsible for creating and accessing an EC2 instance on AWS 

### What was done?
* Added new secrets AWS_ACCESS_KEY_ID and AWS_SECRET_ACCESS_KEY in github repository secrets for integration with a AWS account
* Added new secret TF_VAR_aws_key_pub to reference a public key to access the EC2 instance

### Actions
1. Terraform Plan (runs 'terraform init', 'terraform validate' and 'terraform plan'; on commit)
2. Terraform Apply & Destroy (With auto approve)
3. Terraform Destroy (With auto approve)