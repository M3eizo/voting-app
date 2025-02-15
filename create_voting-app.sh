#!/bin/bash
mkdir voting-app
cd voting-app

mkdir -p frontend backend k8s helm/voting-app

# Frontend-Dateien erstellen
touch frontend/Dockerfile frontend/package.json

# Backend-Dateien erstellen
touch backend/Dockerfile backend/requirements.txt backend/app.py

# Kubernetes-Manifeste erstellen
touch k8s/frontend-deployment.yaml k8s/backend-deployment.yaml k8s/redis-deployment.yaml

# Helm-Chart-Struktur erstellen
mkdir -p helm/voting-app/templates
touch helm/voting-app/Chart.yaml helm/voting-app/values.yaml

touch helm/voting-app/templates/deployment.yaml helm/voting-app/templates/service.yaml

touch README.md