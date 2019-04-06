#!/bin/sh
#
# This is a work in progress
# To run: sh clearcache.sh 
#
# Function:
# Clears caches in a local laravel project

#Clear caches locally
cd ../
docker-compose exec app php artisan cache:clear
docker-compose exec app php artisan view:clear
docker-compose exec app php artisan route:cache
docker-compose exec app php artisan config:cache
