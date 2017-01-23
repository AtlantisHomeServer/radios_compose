#!/usr/bin/env bash

docker stop ejabberd mysql
docker rm ejabberd mysql
docker-compose up -d
sleep 10
docker exec mysql bash -c "mysql ejabberd < /root/mysql.sql"
docker exec ejabberd bash -c "ejabberdctl register admin localhost 123"