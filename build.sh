#!/bin/zsh
kubectl apply -f app-deployment.yml && kubectl apply -f basic-svc.yml && kubectl apply -f nginx-ingress-controller.yml