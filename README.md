# Tekton-ArgoCD

for Argo Cd password


kubectl -n argocd get secret argocd-initial-admin-secret -o jsonpath="{.data.password}" | base64 -d

Installing Tekton CLI
rpm -Uvh https://github.com/tektoncd/cli/releases/download/v0.31.2/tektoncd-cli-0.31.2_Linux-64bit.rpm
