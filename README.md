TODO: add `php` into `/usr/local/bin/php`

    docker-compose down && docker-compose up

Connect to the running container:

    docker exec -ti 665b4a1e17b6 bash

`vim /etc/dnsmasq.conf`:

    address=/.adeira.loc/127.0.0.1
    address=/.zlml.loc/127.0.0.1
    address=/.adminer.loc/127.0.0.1

`systemctl restart dnsmasq`

Inspiration:
- https://github.com/laradock/laradock
- https://github.com/dockette/devstack
