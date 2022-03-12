#!/bin/sh

apk add git
read -p "URL for the git repository: " url
git clone $url
basename=$(basename $url)
reponame=${basename%.*}
cd /usr/src/app/$reponame

read -p "DockerHub username: " username
read -sp "DockerHub password: " password
echo
read -p "Docker image name (must be lowercase): " imagename


docker build . -t $imagename
docker login -u $username -p $password
docker tag $imagename $username/$imagename
docker push $user/$imagename

