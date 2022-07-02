start=$(date +%s)
echo "$(tput setaf 6) ***** Docker Django Superuser Full ***** $(tput setaf 7)"
docker compose -f local.yml run --rm django sh -c "python manage.py createsuperuser"
echo "$(tput setaf 6) ***** END Docker Django Superuser Full ***** $(tput setaf 7)"
end=$(date +%s)
echo "$(tput setaf 6) ***** Elapsed Time: $(($end-$start)) seconds  $(tput setaf 7) *****"
