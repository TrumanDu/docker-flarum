# Guide for upgrade your flarum container

### Upgrade

:warning: Backup your `database`, `config.php`, `composer.lock` and `assets` folder  
:warning: Disable all 3rd party extensions prior to upgrading in panel admin.

1 - Update your docker-compose file (if version was not `latest`)

```yml
version: "3"

services:
  flarum:
    image: jeromegillard/flarum:1.6.0
    container_name: flarum
    ...
```

2 - Pull the last docker images

```sh
docker-compose up -d flarum
```

3 - Updating your database and removing old assets & extensions

```sh
docker exec -ti flarum php /flarum/app/flarum migrate
docker exec -ti flarum php /flarum/app/flarum cache:clear
```

After that your upgrade is finish. :tada: :tada:
