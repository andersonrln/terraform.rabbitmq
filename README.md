# Terraform para provisionar um cluster RabbitMQ na AWS


## Run "terraform init" to install all modules required by this configuration.

> ~$ terraform init

## Select workspace
~$ terraform workspace select (homolog/master) `select only one` 

### Executando o plano do workspace

- Voce deve passar qual e o arquivo de variaveis do ambiente selecionado acima:

> ~$ terraform plan -var-file vars/gerencia.tfvars

- Voce pode executar somente um modulo:

> ~$ terraform plan -var-file vars/gerencia.tfvars -target=module.prometheus

### Criando o ambiente

~$ terraform apply

### Destruindo o ambiente

~$ terraform destroy


## TODO
- Adicionar tags por variaveis
- Incluir todas as VPCS
- Incluir todos os SGs
- Incluir todos os ELB

