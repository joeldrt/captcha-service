# Captcha service

Simple docker-compose captcha service

Captcha Sever by: https://captcha.com/

Technologies:

- Nginx
- PHP (php:7.4-fpm with DG support)
- Server code in `captcha-server`

## Server

### To run:

```sh
./docker-compose up
```

## Configuration

Since site.conf server_name is map to `php-docker.local` we must add the next entry to our `hosts` file. This means this project will run only when reach by a client on the same machine.

To use this in production the we need a valid url pointing to the host that is running this docker-compose and edit the file `site.conf` where

```
server_name <domain-name>;
```

```txt
127.0.0.1    php-docker.local
```

### Verifying service is up and running

Go to next url
http://php-docker.local:8080/botdetect-captcha-lib/simple-botdetect.php?get=html&c=yourFirstCaptchaStyle
