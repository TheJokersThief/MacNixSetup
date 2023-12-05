alias push='git push || git push --set-upstream origin "$(git rev-parse --abbrev-ref HEAD)"'

function commit(){
  message=$1

  git add .
  git commit -m "${message}"
  push
}

function master(){
  git checkout master
  git pull
}

function main(){
  git checkout main
  git pull
}