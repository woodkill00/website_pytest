start=$(date +%s)
echo "$(tput setaf 6) ***** Docker Django Pytest MyPy ***** $(tput setaf 7)"
docker compose -f local.yml run --rm django sh -c "mypy base"
echo "$(tput setaf 6) ***** END Docker Django Pytest MyPy ***** $(tput setaf 7)"
end=$(date +%s)
echo "$(tput setaf 6) ***** Elapsed Time: $(($end-$start)) seconds  $(tput setaf 7) *****"
