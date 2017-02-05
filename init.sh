#!/usr/bin/env bash

for filename in bin/*; do
	ln -s $(realpath $filename) /usr/local/$filename
done
