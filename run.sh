#!/bin/bash
docker compose up -d

# connect
# docker exec -it mysql_test mysql -u root -p
#mysql -h $(docker inspect -f '{{range .NetworkSettings.Networks}}{{.IPAddress}}{{end}}' mysql_test) -P 3306 -u root -p # connecting to container ip.
mysql -h 127.0.0.1 -P 3307 -u root -p # localhostではなぜか通らないのでip直打ちしたら行けた。

# clean up
docker container stop mysql_test
docker container rm mysql_test
docker rmi mysql:latest
