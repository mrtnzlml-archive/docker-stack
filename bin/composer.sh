#!/usr/bin/env bash

docker run --interactive --rm --tty \
		--volume $PWD:/app \
		--user $(id -u):$(id -g) \
		x/composer composer "$@"
