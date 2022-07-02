start=$(date +%s)
echo "$(tput setaf 6)***** checking DOCKER CONTAINERS *****$(tput setaf 7)"
docker container ls -a
echo "$(tput setaf 6)***** checking DOCKER IMAGES *****$(tput setaf 7)"
docker image ls -a
echo "$(tput setaf 6)***** checking DOCKER VOLUMES *****$(tput setaf 7)"
docker volume ls
echo "$(tput setaf 6)***** STOPPING DOCKER CONTAINERS *****$(tput setaf 7)"
docker stop $(docker ps -a -q)
echo "$(tput setaf 6)***** DOCKER REMOVING EVERYTHING *****$(tput setaf 7)"
docker system prune --volumes --all --force
echo "$(tput setaf 6)***** checking DOCKER CONTAINERS *****$(tput setaf 7)"
docker container ls -a
echo "$(tput setaf 6)***** checking DOCKER IMAGES *****$(tput setaf 7)"
docker image ls -a
echo "$(tput setaf 6)***** checking DOCKER VOLUMES *****$(tput setaf 7)"
docker volume ls
end=$(date +%s)
echo "$(tput setaf 6) ***** Elapsed Time: $(($end-$start)) seconds  $(tput setaf 7) *****"
