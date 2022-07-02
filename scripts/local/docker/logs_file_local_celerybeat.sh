start=$(date +%s)
echo "$(tput setaf 6) ***** GETTING CELERYBEAT LOGS ***** $(tput setaf 7)"
# docker logs celerybeat >& Logs/celerybeat.log
docker logs base_local_celerybeat > Logs/celerybeat_output.log 2> Logs/celerybeat_error.log
docker logs base_local_celerybeat
echo "$(tput setaf 6) ***** END of GETTING CELERYBEAT LOGS ***** $(tput setaf 7)"
end=$(date +%s)
echo "$(tput setaf 6) ***** Elapsed Time: $(($end-$start)) seconds  $(tput setaf 7) *****"
