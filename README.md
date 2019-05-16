### Infraestrutura como Código - Infra Ágil

Automação de Codigo com foco em Infraestrutura - Levando Agilidade para criação, atualização e excluir toda a Infraestrutura

- Infra em Cloud AWS
    |_Sistema Operacional
    |_Firewall
    |_Network
    |_DNS
    |_Volumes Logicos (HD, SSD, EBS)



OBJETIVOS

    Provisionar uma instância EC2 na AWS - usando t2.micro
    Criar as TAGS para a instância
    Associar Chave PEM
    Regras Security Group INBOUND, portas 80 e 22
    Regra de Security Group OUTBOUND para a instância ter acesso à internet
    Execução de UserData com script de instalação 
    Atualizar o S.O
    Instalar o NGINX
    Instalar o GIT
    Instalar o Docker Compose
    Utilização de variaveis  
    Realiza o clone do repo DockeCompose - git clone


SEGURANÇA E ACESSOS
    Chaves de Segurança e arquivo PEM

        Usando a aws cli gerar a KEY e PEM
        aws_access_key, aws_secret_key, key_name

        Comando para gerar e salva a Key e Pem
        aws ec2 --region us-east-1  create-key-pair --key-name labtf --query 'labtf' --output text > labtf.pem

TERRAFORM
    Principais arquivos TF

        providers.tf
            Informações de conexão com a AWS

        main.tf
            Nesse arquivo declaramos as informações da instância que vamos criar

        security-group.tf
            Security group que será criado e adicionado na instância

        vars.tf
           Onde define as variáveis que serão utilizadas

        nginx.sh
            Realiza a instalação dos pacotes e modulos

        outputs
            Exiber o IP Public, DNS e KEY