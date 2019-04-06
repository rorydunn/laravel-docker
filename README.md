# Laravel Local Readme
### At this point this is just a collection of notes and not organized
$ cp .env.example .env

$ docker-compose up -d

$ docker-compose exec app php artisan key:generate

$ docker-compose exec app php artisan migrate

#### Import database
$ docker exec -i insurance-app_database_1 mysql -uhomestead -psecret homestead < ~/Downloads/prod_db_10_8.sql

$ docker-compose exec app php artisan migrate

#### Connecting to the mysql db
// get container name

$ docker ps

$ docker exec -it insurance-app_database_1 /bin/bash

$ mysql -u homestead -p

// Import Data

$ docker-compose exec app php artisan db:seed --class=seedCoordinates

#### Clear caches locally
$ docker-compose exec app php artisan cache:clear

$ docker-compose exec app php artisan view:clear

$ docker-compose exec app php artisan route:cache

$ docker-compose exec app php artisan config:cache
