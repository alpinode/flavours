set -e

source .env

for f in $([[ -n $1 ]] && echo $1 || /bin/ls flavours); do
  docker push $IMAGE_NAME:$f
  docker push $IMAGE_NAME:$f-dev
done
