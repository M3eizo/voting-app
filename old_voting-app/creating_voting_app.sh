#!/bin/bash

# Projektverzeichnis erstellen
mkdir -p voting-app/{vote,backend,result,k8s}

# Dateien in den entsprechenden Verzeichnissen erstellen
touch voting-app/vote/{Dockerfile,app.py}
touch voting-app/backend/{Dockerfile,server.js}
touch voting-app/result/{Dockerfile,app.py}

touch voting-app/k8s/{redis-deployment.yaml,postgres-deployment.yaml,vote-deployment.yaml,backend-deployment.yaml,result-deployment.yaml,vote-service.yaml,backend-service.yaml,result-service.yaml,ingress.yaml,configmap.yaml}

echo "Projektstruktur wurde erfolgreich erstellt:"
tree voting-app