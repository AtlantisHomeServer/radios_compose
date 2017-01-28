#!/usr/bin/env bash

docker stop ejabberd mysql radios
docker rm ejabberd mysql radios
docker-compose up -d
sleep 20
docker exec mysql bash -c "mysql ejabberd < /root/mysql.sql"
docker exec ejabberd bash -c "ejabberdctl register admin localhost 123"