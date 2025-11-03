kubens() {
  local namespace
  namespace=$(kubectl get namespaces -o jsonpath='{.items[*].metadata.name}' | tr ' ' '\n' | fzf --height 40% --reverse --prompt="Select namespace: ")

  if [[ -n "$namespace" ]]; then
    kubectl config set-context --current --namespace="$namespace"
    echo "Switched to namespace: $namespace"
  else
    echo "No namespace selected"
  fi
}