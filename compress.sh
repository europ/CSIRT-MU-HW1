#!/bin/sh

# create a gzip tarball

NAME=adrian_toth

rm --force --recursive --verbose ${NAME}.tar.gz

tar --create --gzip --verbose --file=${NAME}.tar.gz playbook.yml
