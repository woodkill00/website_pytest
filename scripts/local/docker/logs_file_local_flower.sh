start=$(date +%s)
echo "$(tput setaf 6) ***** GETTING FLOWER LOGS ***** $(tput setaf 7)"
# docker logs flower >& Logs/flower.log
docker logs base_local_flower > Logs/flower_output.log 2> Logs/flower_error.log
docker logs base_local_flower
echo "$(tput setaf 6) ***** END of GETTING FLOWER LOGS ***** $(tput setaf 7)"
end=$(date +%s)
echo "$(tput setaf 6) ***** Elapsed Time: $(($end-$start)) seconds  $(tput setaf 7) *****"
