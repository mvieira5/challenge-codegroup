# Guia de como criar a infraestrutura

**Pré-requisitos**

1. Instale o Terraform.

2. Configure credenciais AWS com permissões adequadas.

**Estrutura do Projeto**

    • terraform/: Configuração principal do projeto.
    
    • modules/: Contém os módulos para EC2, RDS, S3 e VPC.


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
