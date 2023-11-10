#!/bin/bash
docker compose up -d
# docker exec -it mysql_test mysql -u root -p
#mysql -h $(docker inspect -f '{{range .NetworkSettings.Networks}}{{.IPAddress}}{{end}}' mysql_test) -P 3306 -u root -p # コンテナのipを使って接続
mysql -h 127.0.0.1 -P 3307 -u root -p # localhostではなぜか通らないのでip直打ちしたら行けた。

