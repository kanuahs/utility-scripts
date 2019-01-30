# Installs latest release of kubernetes
curl -LO https://storage.googleapis.com/kubernetes-release/release/$(curl -s https://storage.googleapis.com/kubernetes-release/release/stable.txt)/bin/linux/amd64/kubectl \
 && sudo install kubectl /usr/local/bin/kubectl \
 && rm ./kubectl

# Bash completion
kubectl completion bash > kubectl_autocomplete \
 && sudo mv kubectl_autocomplete /etc/bash_completion.d/kubectl

kubectl version --client
