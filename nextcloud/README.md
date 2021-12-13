# nextcloud

## TODO after major release upgrade

```
>_ sudo docker-compose exec -u www-data app bash
# occ tell what's wrong
$ php occ -V

# Update
$ php occ upgrade
$ php occ maintenance:mode --off

# status check
$ php occ status
$ php occ -V
```

## crontab to update Multimedia folder

We need to regulary update this folder since files aren't added via nextcloud.

> sudo crontab -e

add the following line

```
0 0 * * * docker exec --user www-data  nextcloud php occ files:scan --path=toto/files/Multimedia
```

## crontab update folders

Crontab to update cache and speed up Nextcloud

```
*/5 * * * * docker exec --user www-data  nextcloud php -f /var/www/html/cron.php
```

