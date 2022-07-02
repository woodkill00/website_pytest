start=$(date +%s)
echo "$(tput setaf 6) ***** GETTING CELERY LOGS ***** $(tput setaf 7)"
# docker logs celeryworker >& Logs/celeryworker.log
docker logs base_local_celeryworker > Logs/celeryworker_output.log 2> Logs/celeryworker_error.log
docker logs base_local_celeryworker
echo "$(tput setaf 6) ***** END of GETTING CELERY LOGS ***** $(tput setaf 7)"
end=$(date +%s)
echo "$(tput setaf 6) ***** Elapsed Time: $(($end-$start)) seconds  $(tput setaf 7) *****"
