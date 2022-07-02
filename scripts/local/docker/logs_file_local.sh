start=$(date +%s)
echo "$(tput setaf 6) ***** GETTING DJANGO LOGS"
# docker logs django >& Logs/django.log
docker logs base_local_django > Logs/django_output.log 2> Logs/django_error.log
echo "$(tput setaf 6) ***** GETTING CELERY LOGS"
# docker logs celeryworker >& Logs/celeryworker.log
docker logs base_local_celeryworker > Logs/celeryworker_output.log 2> Logs/celeryworker_error.log
echo "$(tput setaf 6) ***** GETTING CELERYBEAT LOGS"
# docker logs celerybeat >& Logs/celerybeat.log
docker logs base_local_celerybeat > Logs/celerybeat_output.log 2> Logs/celerybeat_error.log
echo "$(tput setaf 6) ***** GETTING FLOWER LOGS ***** $(tput setaf 7)"
# docker logs flower >& Logs/flower.log
docker logs base_local_flower > Logs/flower_output.log 2> Logs/flower_error.log
echo "$(tput setaf 6) ***** GETTING POSTGRES LOGS ***** $(tput setaf 7)"
# docker logs postgres >& Logs/postgres.log
docker logs base_local_postgres > Logs/postgres_output.log 2> Logs/postgres_error.log
echo "$(tput setaf 6) ***** GETTING PGADMIN LOGS ***** $(tput setaf 7)"
# docker logs pgadmin >& Logs/pgadmin.log
docker logs base_local_pgadmin > Logs/pgadmin_output.log 2> Logs/pgadmin_error.log
# echo "$(tput setaf 6) ***** GETTING NGINX LOGS ***** $(tput setaf 7)"
# # docker logs nginx >& Logs/nginx.log
# docker logs local_nginx > Logs/nginx_output.log 2> Logs/nginx_error.log
echo "$(tput setaf 6) ***** GETTING REDIS LOGS ***** $(tput setaf 7)"
# docker logs redis >& Logs/redis.log
docker logs base_local_redis > Logs/redis_output.log 2> Logs/redis_error.log
echo "$(tput setaf 6) ***** GETTING DOCS LOGS ***** $(tput setaf 7)"
# docker logs docs >& Logs/docs.log
docker logs base_local_docs > Logs/docs_output.log 2> Logs/docs_error.log
echo "$(tput setaf 6) ***** GETTING NODE LOGS ***** $(tput setaf 7)"
# docker logs node >& Logs/node.log
docker logs base_local_node > Logs/node_output.log 2> Logs/node_error.log
end=$(date +%s)
echo "$(tput setaf 6) ***** Elapsed Time: $(($end-$start)) seconds  $(tput setaf 7) *****"
