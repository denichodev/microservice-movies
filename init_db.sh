#!/bind/sh

docker-compose run micromovies-users-service knex migrate:latest --env development --knexfile app/knexfile.js
docker-compose run micromovies-users-service knex seed:run --env development --knexfile app/knexfile.js
