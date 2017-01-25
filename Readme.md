### Docker compose for ejabberd + mysql

#### Pre
* docker compose

### How To
just type
```bash
$ sh ./start-ejabberd.sh
```

### Current Issue

if you encounter such error

```bash
ERROR 2002 (HY000): Can't connect to local MySQL server through socket '/var/run/mysqld/mysqld.sock' (2)
Error: conflict
```

It means, we fail to generate ejabberd table. So, add Manually
```bash
$ docker exec mysql bash -c "mysql ejabberd < /root/mysql.sql"
$ docker exec ejabberd bash -c "ejabberdctl register admin localhost 123"
```


### admin page
go to [admin Page](http://localhost:5280/admin)

id: root@localhost

pw: 123