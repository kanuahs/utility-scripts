VERSION=$(curl --silent "https://api.github.com/repos/argoproj/argo-cd/releases/latest" | grep '"tag_name"' | sed -E 's/.*"([^"]+)".*/\1/')

echo "Installing ArgoCD CLI version $VERSION"

curl -SL -o ./argocd https://github.com/argoproj/argo-cd/releases/download/$VERSION/argocd-linux-amd64

sudo install argocd /usr/local/bin/argocd && rm argocd

argocd version --client
