start=$(date +%s)
echo "$(tput setaf 6) ***** GETTING NODE LOGS ***** $(tput setaf 7)"
# docker logs node >& Logs/node.log
docker logs base_local_node > Logs/node_output.log 2> Logs/node_error.log
docker logs base_local_node
echo "$(tput setaf 6) ***** END of GETTING NODE LOGS ***** $(tput setaf 7)"
end=$(date +%s)
echo "$(tput setaf 6) ***** Elapsed Time: $(($end-$start)) seconds  $(tput setaf 7) *****"
