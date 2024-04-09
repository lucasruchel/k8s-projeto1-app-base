#!/bin/bash

if [ -d dio-projeto1-k8s ]; then
    rm -rf dio-projeto1-k8s
fi

echo "## Clonando repositorio ##"
git clone https://gitlab.com/lucasruchel/dio-projeto1-k8s.git

echo "## Entrando em diretório do projeto ##"
cd dio-projeto1-k8s

echo "## Applying deploys  ##"
kubectl apply -f deployment.yml

echo "## Applyting services ##"
kubectl apply -f service.yml