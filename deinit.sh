#!/usr/bin/env bash

for filename in bin/*; do
	rm /usr/local/$filename
done
