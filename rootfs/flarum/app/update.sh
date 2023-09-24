#!/bin/sh
composer update --prefer-dist --no-dev -a -W
php flarum migrate
php flarum cache:clear
