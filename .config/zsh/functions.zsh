docker_tags(){
  curl https://mirror.gcr.io/v2/$1/tags/list | json_pp
}

kns(){
  kubectl get namespace --all-namespaces -o name | fzf | xargs kubectl config set-context --current --namespace=$1
}

kd() {
  kubectl get $1 --all-namespaces -o jsonpath='{range .items[*]}{.metadata.namespace}{"\t"}{.metadata.name}{"\n"}' | fzf --preview="echo '{}' | xargs kubectl describe $1 -n" | xargs kubectl describe $1 -n
}

kdelete() {
  kubectl get $1 --all-namespaces -o jsonpath='{range .items[*]}{.metadata.namespace}{"\t"}{.metadata.name}{"\n"}' | fzf | xargs kubectl delete $1 -n
}
