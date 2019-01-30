# Installs latest release of minikube
curl -LO https://storage.googleapis.com/minikube/releases/latest/minikube-linux-amd64 \
 && sudo install minikube-linux-amd64 /usr/local/bin/minikube \
 && rm minikube-linux-amd64

# Bash completion
minikube completion bash > minikube_autocomplete \
 && sudo mv minikube_autocomplete /etc/bash_completion.d/minikube

minikube version

