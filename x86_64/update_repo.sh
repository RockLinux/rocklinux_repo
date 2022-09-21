#!/bin/bash

rm rocklinux_repo*

echo "repo-add"
repo-add -s -n -R rocklinux_repo.db.tar.gz *.pkg.tar.zst

sleep 1

rm rocklinux_repo.db
rm rocklinux_repo.db.sig

rm rocklinux_repo.files
rm rocklinux_repo.files.sig

mv rocklinux_repo.db.tar.gz rocklinux_repo.db
mv rocklinux_repo.db.tar.gz.sig rocklinux_repo.db.sig

mv rocklinux_repo.files.tar.gz rocklinux_repo.files
mv rocklinux_repo.files.tar.gz.sig rocklinux_repo.files.sig

echo "####################################"
echo "Repo Updated!!"
echo "####################################"
