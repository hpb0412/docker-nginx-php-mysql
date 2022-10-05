# Docker Nginx PHP MySql

## What is it?

This repo is a template for setting up a local php development environment using:
- Docker
- Nginx
- PHP
- MySql

For PHP, we demo with a Laravel ver 9 application, following this awesome tutorial https://www.youtube.com/watch?v=AGE3wRKljkw


## Notices

- If you want to access MySql database using 3rd-party tool like TablePlus, DataGrid,
you should use port `33060` (not the default `3306`).
If you want to change it, head to `docker-compose.yml`
and update the port mapping of `db` service.

- The `_server/etc` is where I store configuration files of PHP, FPM and Nginx.
- There is a `_server/README.md` where you can see some notes for these configurations.
- The `_server/var` is generated when we start the system.
    - The `_server/var/lib` is where Mysql Database is stored.
    - The `_server/var/log` is where I recieve log files.
    - The `_server/var/run` is where the socket connection between Nginx and Php FPM is stored.

