# Guia de como criar a infraestrutura

**Pré-requisitos**

1. Instale o Terraform.

2. Configure credenciais AWS com permissões adequadas.

**Estrutura do Projeto**

    • terraform/: Configuração principal do projeto.
    
    • modules/: Contém os módulos para EC2, RDS, S3 e VPC.

    • OBSERVAÇÃO: Não esqueça de criar/editar o arquivo terraform.tfvars antes de subir a infraestrutura


**Instruções de Uso**

1. Inicializar o Terraform:

      ```terraform init```

2. Visualizar o plano de execução:

      ```terraform plan```

3. Aplicar as configurações:

      ```terraform apply```

**Verificar os Outputs:**
Após a execução, os seguintes outputs serão exibidos:

    1. IP público da instância EC2.
    
    2. Endpoint do banco de dados RDS.

**Limpeza de recursos**

1. Para remover os recursos provisionados:
   
   ```terraform destroy```


## Infracost
O principal objetivo do Infracost é mostrar aos usuários uma estimativa de quanto pagarão com base na configuração da infraestrutura definida.

**Como instalar**

1. Mac

       $ brew install infracost

2. Linux

       curl -fsSL https://raw.githubusercontent.com/infracost/infracost/master/scripts/install.sh | sh

3. Windows

       $ choco install infracost


Depois de instalar, verifique se o infracost está funcionando com o comando:

       $ infracost –version

Para utilizar, você precisa autenticar no Infracost, utilizando uma API Key
podendo ser uma do próprio GitHub, e para rodar localmente o Infracost, siga os passos:
      
       $ infracost auth login
       $ export INFRACOST_API_KEY=<sua api key>

Agora com o Infracost configurado é bem simples, navegue até o diretório do terraform que você deseja iniciar os passos para criação da infraestrutura e utilize o comando para obter um resumo dos gastos do que será criado.

       $ infracost breakdown --path .

