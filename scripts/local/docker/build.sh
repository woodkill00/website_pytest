start=$(date +%s)
echo "$(tput setaf 6) ***** Building Dockers $(tput setaf 7) *****"
docker compose -f local.yml up --build -d --remove-orphans
echo "$(tput setaf 6) ***** END of Building Dockers ***** $(tput setaf 7)"
end=$(date +%s)
echo "$(tput setaf 6) ***** Elapsed Time: $(($end-$start)) seconds  $(tput setaf 7) *****"
