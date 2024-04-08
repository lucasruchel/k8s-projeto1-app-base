#!/bin/bash

echo "## Criando imagens ##"
docker build -t lucasruchel/projeto1-backend:2.0 backend/.
docker build -t lucasruchel/projeto1-db:1.0 database/.

echo "## Upload de imagens ##"
docker push lucasruchel/projeto1-backend:2.0
docker push lucasruchel/projeto1-db:1.0

echo "## Applying deploys  ##"
kubectl apply -f deployment.yml

echo "## Applyting services ##"
kubectl apply -f service.yml