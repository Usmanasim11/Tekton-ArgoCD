#!/bin/bash

echo "Installing tekton Pipelines"
kubectl apply --filename https://storage.googleapis.com/tekton-releases/pipeline/latest/release.yaml

echo "Installing triggers"
kubectl apply --filename \
https://storage.googleapis.com/tekton-releases/triggers/latest/release.yaml
kubectl apply --filename \
https://storage.googleapis.com/tekton-releases/triggers/latest/interceptors.yaml


echo "Installing dashboard for tekton"

kubectl apply --filename https://storage.googleapis.com/tekton-releases/dashboard/latest/release.yaml
kubectl apply -f https://storage.googleapis.com/tekton-releases/triggers/latest/release.yaml
kubectl apply -f https://storage.googleapis.com/tekton-releases/triggers/latest/interceptors.yaml
kubectl apply -f https://raw.githubusercontent.com/tektoncd/triggers/main/examples/rbac.yaml

echo "Installing tekton cli"
rpm -Uvh https://github.com/tektoncd/cli/releases/download/v0.31.2/tektoncd-cli-0.31.2_Linux-64bit.rpm

