[![Build Status](https://travis-ci.org/mrtnzlml/docker-stack.svg?branch=master)](https://travis-ci.org/mrtnzlml/docker-stack)

## Drive this beast

    docker-compose down --remove-orphans && docker-compose build && docker-compose up -d

Setup DNS via `vim /etc/dnsmasq.conf`:

    address=/.adeira.loc/127.0.0.1
    address=/.zlml.loc/127.0.0.1
    address=/.adminer.loc/127.0.0.1

Restart DNS server using `systemctl restart dnsmasq`. Also create links for PHP and Composer:

    chmod +x ./init.sh && ./init.sh

## What is included

- MySQL
- Nginx
- PHP 7.1 + Composer
- PostgreSQL

## How to run PHP or Composer

Connect to the PHP machine:

    docker-compose exec php-fpm bash

And do what you want:

    php -v
    composer out

## Cleanup

    docker rm -v $(docker ps -a -q -f status=exited)
    docker rmi $(docker images -f "dangling=true" -q)
    docker volume rm $(docker volume ls -qf dangling=true)

Maybe implement this: https://github.com/ZZROTDesign/docker-clean ?
