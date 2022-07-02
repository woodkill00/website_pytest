start=$(date +%s)
echo "$(tput setaf 6) ***** Docker Django Pytest ***** $(tput setaf 7)"
docker compose -f local.yml run --rm django sh -c "py.test"
echo "$(tput setaf 6) ***** END Docker Django Pytest ***** $(tput setaf 7)"
end=$(date +%s)
echo "$(tput setaf 6) ***** Elapsed Time: $(($end-$start)) seconds  $(tput setaf 7) *****"
