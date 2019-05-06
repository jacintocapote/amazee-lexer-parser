#! /usr/bin/env bash
echo ""
echo "Executing composer install"
###
# Running 'composer install' to keep the folder structure and content up to
# date with the current branch.
###
docker-compose exec cli composer install
echo ""
echo "Installing amazee lexer parser"
docker-compose exec cli drush si:install --account-name=amazee --account-pass=test --site-name="Amazee Lexer & Parser" --site-mail="jacintocapote@gmail.com" --existing-config --yes --verbose
echo ""
echo "Clearing cache"
docker-compose exec cli drush cr
