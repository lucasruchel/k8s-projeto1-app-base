# Exemplo de deploy de aplicação utilizando o Kubernetes

Os códigos foram executados em um cluster no Google Cloud Engine (GKE) em cluster no modo AutoPilot, em que os nós computacionais são alocados dinâmicamente baseados nos recursos requisitados pelos PODs implantados no cluster.

O comando abaixo permite a execução do script para criação do ambiente.

Para reproduzir é necessário alterar o arquivo **script.sh** para corresponder aos seus repositórios e as imagens correspondentes no arquivo **deployment.yml**.

``` bash

chmod +x script.sh
./script.sh
```

## Passos realizados no projeto

1. Build das imagens do banco e do backend
1. Upload para Docker Hub
2. Criação de Recursos do Deployment:
     * PersistentVolumeClaim: Para armazenamento persistente dos dados
     * Deployment para o banco de dados com 1 instância
     * Deployment para o backend da aplicação
1. Criação de Recursos para o acesso aos serviços oferecidos:
     * Criação de recurso do tipo LoadBalancer para acesso distribuído aos Pods criados no deployment
     * Criação de Service para acesso ao banco de dados    