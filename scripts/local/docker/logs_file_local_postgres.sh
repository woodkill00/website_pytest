start=$(date +%s)
echo "$(tput setaf 6) ***** GETTING POSTGRES LOG ***** $(tput setaf 7)"
# docker logs postgres >& Logs/postgres.log
docker logs base_local_postgres > Logs/postgres_output.log 2> Logs/postgres_error.log
docker logs base_local_postgres
echo "$(tput setaf 6) ***** END of GETTING POSTGRES LOG ***** $(tput setaf 7)"
end=$(date +%s)
echo "$(tput setaf 6) ***** Elapsed Time: $(($end-$start)) seconds  $(tput setaf 7) *****"
