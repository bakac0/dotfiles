docker_tags(){
  curl https://mirror.gcr.io/v2/$1/tags/list | json_pp
}
