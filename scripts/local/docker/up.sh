start=$(date +%s)
echo "$(tput setaf 6) ***** Docker Set Up ***** $(tput setaf 7)"
docker compose -f local.yml up -d
echo "$(tput setaf 6) ***** END of Docker Set Up ***** $(tput setaf 7)"
end=$(date +%s)
echo "$(tput setaf 6) ***** Elapsed Time: $(($end-$start)) seconds  $(tput setaf 7) *****"
