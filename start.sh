export COMPOSE_FILES="$(find . | grep "docker-compose.yml")"

# WIP --build as args ...
for COMPOSE_FILE in $COMPOSE_FILES
do
    docker-compose -f $COMPOSE_FILE --env-file ./.env up -d --build
done
