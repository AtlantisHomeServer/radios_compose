#!/usr/bin/env bash

docker-compose up -d
sleep 5
docker exec mysql bash -c "mysql ejabberd < /root/mysql.sql"
docker exec ejabberd bash -c "ejabberdctl register admin localhost 123"