#!/bin/bash

docker ps

docker stop wp-db

docker run --rm --volumes-from wp-db -v $(pwd):/backup boombatower/docker-backup backup

docker start wp-db

mv ./backup.tar.xz ./backup

ls -l ./backup
