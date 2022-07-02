start=$(date +%s)
echo "$(tput setaf 6) ***** GETTING REDIS LOGS ***** $(tput setaf 7)"
# docker logs redis >& Logs/redis.log
docker logs base_local_redis > Logs/redis_output.log 2> Logs/redis_error.log
docker logs base_local_redis
echo "$(tput setaf 6) ***** END of GETTING REDIS LOGS ***** $(tput setaf 7)"
end=$(date +%s)
echo "$(tput setaf 6) ***** Elapsed Time: $(($end-$start)) seconds  $(tput setaf 7) *****"
