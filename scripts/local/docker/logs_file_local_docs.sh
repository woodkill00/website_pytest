start=$(date +%s)
echo "$(tput setaf 6) ***** GETTING DOCS LOGS ***** $(tput setaf 7)"
# docker logs docs >& Logs/docs.log
docker logs base_local_docs > Logs/docs_output.log 2> Logs/docs_error.log
docker logs base_local_docs
echo "$(tput setaf 6) ***** END of GETTING DOCS LOGS ***** $(tput setaf 7)"
end=$(date +%s)
echo "$(tput setaf 6) ***** Elapsed Time: $(($end-$start)) seconds  $(tput setaf 7) *****"
