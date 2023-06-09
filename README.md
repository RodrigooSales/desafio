# Desafio DevOps cadeira Ambientes de Desenvolivmento de Software Unifor

## Ideia do projeto

### Parte 1 - Configuração do Servidor
  1. Configurar um servidor AWS executando uma versão Ubuntu LTS
  2. Instalar e configurar qualquer software que você recomendaria em uma configuração de servidor padrão sob as perspectivas de segurança, desempenho, backup e monitorização
  3. Instalar e configurar o nginx para servir uma pagina web HTML estática
  4. Utilizar ferramentas de automação como Ansible, Terraform ou AWS Cloudformation


### Parte 2 - Scripting
Utilizando uma linguagem de script à sua escolha, construa um projeto(servido através do nginx) que possa relatar estatísticas operacionais básicas sob a forma de um objeto JSON

As estatísticas devem incluir (como mínimo):<br>
1. Carga atual da CPU, tempo de espera e utilização de memória (opcionalmente reportado como slab, cache, RSS, etc.)
2. Se existem atualizações pendentes (opcionalmente, reportando atualizações de segurança independentemente)
3. Utilização atual do disco e desempenho de leitura/escrita

### Parte 3 - Continuos Delivery
esenhar e construir uma pipeline para apoiar a entrega continua da aplicação de monitorização construída na parte 2 no servidor configurado na parte 1. Descrever a pipeline utilizando um diagrama de fluxo e explicar o objeto de seleção usado em cada uma das ferramentas e técnicas específicas que compõem a sua pipeline.

## Tecnologias que serão usadas
- <img align="center" alt="Rod-Terraform" height="30" width="40" src="https://raw.githubusercontent.com/devicons/devicon/master/icons/terraform/terraform-original.svg"> Terraform

- <img align="center" alt="Rod-Docker" height="30" width="40" src="https://raw.githubusercontent.com/devicons/devicon/master/icons/docker/docker-original.svg"> Docker

- <img align="center" alt="Rod-Nginx" height="30" width="40" src="https://raw.githubusercontent.com/devicons/devicon/master/icons/nginx/nginx-original.svg"> Nginx

- <img align="center" alt="Rod-Aws" height="30" width="40" src="https://raw.githubusercontent.com/devicons/devicon/master/icons/amazonwebservices/amazonwebservices-original.svg"> AWS

- <img align="center" alt="Rod-Bash" height="30" width="40" src="https://raw.githubusercontent.com/devicons/devicon/master/icons/bash/bash-original.svg"> Shell Script

- <img align="center" alt="Rod-Python" height="30" width="40" src="https://raw.githubusercontent.com/devicons/devicon/master/icons/python/python-original.svg"> Python


## Arquitetura do projeto

Github Repository -> Gerenciador de vercionamento que sera armazenado o codigo fonte.

↓<br>
↓

Github Actions -> Ferramenta de CI/CD que será usada para build e deploy da aplicação 

↓<br>
↓

Terraform -> Linguagem de IaC que será usada para criação e configuração de VM

↓<br>
↓

Amazon EC2 -> maquina virtual que irá funcionar como servidor nginx de proxy reverso que ira expor o arquivo json com estatisticas operacionais

    grupo de segurança - HTTP 80
