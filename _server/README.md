# Configuration Notes

Collection of what to notice when configuring the PHP & Nginx.

## PHP

With PHP Docker, the default config location is define with `$PHP_INI_DIR`

However, we want our own configuration, we will pass our configuration into
the container by mapping volume `./_server/etc/php:/etc/php` (defined in `docker-compose.yml`)

Next, we also define `entrypoint` so that we can tell `php-fpm` to use our configuration
```yml
app:
  # ...
  entrypoint:
    - php-fpm
    - -n
    - -c
    - /etc/php/php.ini
    - -y
    - /etc/php/php-fpm.conf
  # ...
```


## NGINX

We use `conf.d` instead of `sites-enabled`

Since we don't need virtual host and we take advantage of `include` directive
instead of using `soft link`

Ref:
- [conf.d vs sites-enabled](https://serverfault.com/questions/527630/difference-in-sites-available-vs-sites-enabled-vs-conf-d-directories-nginx)


## User & Group

By default PHP-FPM and Nginx use specific user/group.

PHP-FPM user and group are set to `www-data` whereas Nginx user is set to `nginx` in their configurations.

Read more: https://aschmelyun.com/blog/fixing-permissions-issues-with-docker-compose-and-php/
