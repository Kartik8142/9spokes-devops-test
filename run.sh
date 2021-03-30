#!/bin/bash
minikube start --nodes 3 -p 9spokes-devsecops
kubectl create namespace staging
kubectl apply -f manifest.yaml -n staging
helm repo add prometheus-community https://prometheus-community.github.io/helm-charts
helm install prometheus prometheus-community/prometheus -n kube-system
helm repo add grafana https://grafana.github.io/helm-charts
helm install grafana grafana/grafana -n kube-system
kubectl apply -f ingress.yaml -n kube-system
kubectl apply -f alert.yaml -n kube-system
