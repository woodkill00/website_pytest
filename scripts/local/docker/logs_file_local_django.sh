start=$(date +%s)
echo "$(tput setaf 6) ***** GETTING DJANGO LOGS ***** $(tput setaf 7)"
# docker logs django >& Logs/django.log
docker logs base_local_django > Logs/django_output.log 2> Logs/django_error.log
docker logs base_local_django
echo "$(tput setaf 6) ***** END of GETTING DJANGO LOGS ***** $(tput setaf 7)"
end=$(date +%s)
echo "$(tput setaf 6) ***** Elapsed Time: $(($end-$start)) seconds  $(tput setaf 7) *****"
