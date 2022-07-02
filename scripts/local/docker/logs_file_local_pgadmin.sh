start=$(date +%s)
echo "$(tput setaf 6) ***** GETTING PGADMIN LOGS ***** $(tput setaf 7)"
# docker logs pgadmin >& Logs/pgadmin.log
docker logs base_local_pgadmin > Logs/pgadmin_output.log 2> Logs/pgadmin_error.log
docker logs base_local_pgadmin
echo "$(tput setaf 6) ***** END of GETTING PGADMIN LOGS ***** $(tput setaf 7)"
end=$(date +%s)
echo "$(tput setaf 6) ***** Elapsed Time: $(($end-$start)) seconds  $(tput setaf 7) *****"
