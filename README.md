OBJETIVOS

    Provisionar uma instância EC2 na AWS
    Criar as TAGS para a instância
    Associar Chave PEM
    Regras Security Group INBOUND, portas 80 e 22
    Regra de Security Group OUTBOUND para a instância ter acesso à internet
    Apresentar o IP Publico

    Execução de UserData com script de instalação e start do Nginx
    Instalar e Atualizar o Servidor
    Instalar o NGINX


SEGURANÇA E ACESSOS
    Chaves de Segurança e arquivo PEM

        Usando a aws cli gerar a KEY e PEM
        aws_access_key, aws_secret_key, key_name

        Comando para gerar e salva a Key e Pem
        aws ec2 --region us-east-1  create-key-pair --key-name labtf --query 'labtf' --output text > labtf.pem

TERRAFORM
    Principais arquivos TF

        provider.tf
            Informações de conexão com a AWS

        main.tf
            Nesse arquivo declaramos as informações da instância que vamos criar

        security-group.tf
            Security group que será criado e adicionado na instância

        vars.tf
            O arquivo vars, é onde podemos definir as variáveis principais que serão utilizadas