# Captcha service

Simple docker-compose captcha service

Captcha Sever by: https://captcha.com/

Technologies:

- Nginx
- PHP (php:7.4-fpm with DG support)
- Server code in `captcha-server`

## Configuration

Since site.conf server_name is map to `php-docker.local` we must add the next entry to our `hosts` file

```txt
127.0.0.1    php-docker.local
```

## Server

### To run:

```sh
./docker-compose up
```

### Verifying service is up and running

Go to next url
http://php-docker.local:8080/botdetect-captcha-lib/simple-botdetect.php?get=html&c=yourFirstCaptchaStyle
