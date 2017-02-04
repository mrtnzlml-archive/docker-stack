#!/usr/bin/env bash

DOCKER_CONTAINER=dockerstack_php-fpm_1

if [ -f "$1" ] && [ ! -z "$1" ]; then
	DOCKER_PATH=$(pwd | sed s~/home/martin/Work~/var/www~)
	docker exec -it $DOCKER_CONTAINER php "$DOCKER_PATH/$@"
else
	docker exec -it $DOCKER_CONTAINER php "$@"
fi
