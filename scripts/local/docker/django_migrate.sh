start=$(date +%s)
echo "$(tput setaf 6) ***** Docker Django Migrate ***** $(tput setaf 7)"
docker compose -f local.yml run --rm django python manage.py migrate
# docker compose -f production.yml run --rm django sh -c "python manage.py migrate"
echo "$(tput setaf 6) ***** END of Docker Django Migrate ***** $(tput setaf 7)"
end=$(date +%s)
echo "$(tput setaf 6) ***** Elapsed Time: $(($end-$start)) seconds  $(tput setaf 7) *****"
