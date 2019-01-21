# Fetches latest install script and pipes it to bash. This shouldn't be done but im lazy.
curl https://raw.githubusercontent.com/helm/helm/master/scripts/get | bash

# Bash completion
helm completion bash > helm_autocomplete \
 && sudo mv helm_autocomplete /etc/bash_completion.d/helm
