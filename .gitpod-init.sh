#!/bin/bash

composer global require laravel/installer

echo 'export PATH="$PATH:$HOME/.config/composer/vendor/bin"' >> ~/.bashrc

echo 'export PATH="$PATH:$HOME/.composer/vendor/bin"' >> ~/.bashrc

if [ -f ".env" ]; then

    sed -i "s|APP_URL=|APP_URL=${GITPOD_WORKSPACE_URL}|g" .env

    sed -i "s|APP_URL=https://|APP_URL=https://8000-|g" .env

    composer install

    npm install

    npm i

fi
