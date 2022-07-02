start=$(date +%s)
echo "$(tput setaf 6) ***** Docker Django Coverage ***** $(tput setaf 7)"
# docker compose -f local.yml run --rm django sh -c "py.test"
# docker compose -f local.yml run --rm django coverage run -m py.test
docker compose -f local.yml run --rm django coverage run -m pytest
# docker compose -f local.yml run --rm django coverage run --source . -m py.test
docker compose -f local.yml run --rm django coverage report
docker compose -f local.yml run --rm django coverage html
echo "$(tput setaf 6) ***** END Docker Django Coverage ***** $(tput setaf 7)"
end=$(date +%s)
echo "$(tput setaf 6) ***** Elapsed Time: $(($end-$start)) seconds  $(tput setaf 7) *****"
