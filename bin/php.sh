#!/usr/bin/env bash

docker run --interactive --rm \
		--volume $PWD:$PWD \
		--workdir $PWD \
		x/php-fpm php "$@"
