start=$(date +%s)
echo "$(tput setaf 6) ***** Docker Set Down ***** $(tput setaf 7)"
docker compose -f local.yml down
echo "$(tput setaf 6) ***** END of Docker Set Down ***** $(tput setaf 7)"
end=$(date +%s)
echo "$(tput setaf 6) ***** Elapsed Time: $(($end-$start)) seconds  $(tput setaf 7) *****"
