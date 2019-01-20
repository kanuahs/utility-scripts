curl https://raw.githubusercontent.com/helm/helm/master/scripts/get | bash

helm completion bash > helm_autocomplete \
 && sudo mv helm_autocomplete /etc/bash_completion.d/helm