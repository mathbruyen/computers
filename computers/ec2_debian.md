# EC2 Debian

[Official Debian AMI](http://wiki.debian.org/Cloud/AmazonEC2Image) 64-bits. Default user is `admin`.

## General

`apt-get install vim build-essential`

Dotfiles:
* `.bashrc`
* `.bash_profile`

## SSH

Relies on `.ssh/config` dotfile. Generate keys with `ssh-keygen -t rsa`. Additionally listens to port 443 in `/etc/ssh/sshd_config`.

## Git

`apt-get install git`

Relies on dotfile `.gitconfig`.

## Tiny Tiny RSS

```
apt-get install nginx spawn-fcgi php5-cgi php5-cli php5-pgsql postgresql postgresql-client
```

### Tiny Tiny RSS

[Website](http://tt-rss.org) and [installation guide](http://tt-rss.org/redmine/projects/tt-rss/wiki/InstallationNotes).

```
cd /var/www
wget https://github.com/gothfox/Tiny-Tiny-RSS/archive/1.7.5.tar.gz
tar -xzf 1.7.5.tar.gz
rm 1.7.5.tar.gz
mv Tiny-Tiny-RSS-1.7.5 TinyTinyRss
chown -R www-data:www-data TinyTinyRss
mkdir logs/tinytinyrss
cd TinyTinyRss
cp config.php-dist config.php
```

Configuration items:
* DB_USER
* DB_NAME
* DB_PASS
* SELF_URL_PATH

Add cron task `cronta -u www-data -e`.
```
*/30 * * * * cd /var/www/TinyTinyRss && /usr/bin/php /var/www/TinyTinyRss/update.php --feeds >/dev/null 2>&1
```

### Postgre

```
adduser tinytinyrss
su postgres
psql
> CREATE USER tinytinyrss WITH PASSWORD 'TinyTinyRss';
> CREATE DATABASE tinytinyrss OWNER tinytinyrss;
exit

su tinytinyrss
psql tinytinyrss -f schema/ttrss_schema_pgsql.sql
```

### nginx with php

[Source](http://library.linode.com/web-servers/nginx/php-fastcgi/debian-6-squeeze).

Create file `/etc/nginx/sites-available/tinytinyrss` and symlink it to `sites-enabled`.
```
server {
    server_name feeds.mais-h.eu;
    access_log /var/www/logs/tinytinyrss/access.log;
    error_log /var/www/logs/tinytinyrss/error.log;
    root /var/www/TinyTinyRss;

    location / {
        index  index.php;
    }

    location ~ \.php$ {
        include /etc/nginx/fastcgi_params;
        fastcgi_pass unix:/var/run/php-fastcgi/php-fastcgi.socket;
        fastcgi_index index.php;
        fastcgi_param SCRIPT_FILENAME /var/www/TinyTinyRss$fastcgi_script_name;
    }
}
```

Create file `/usr/bin/php-fastcgi` and make it executable `chmod +x /usr/bin/php-fastcgi`.
```
#!/bin/bash

FASTCGI_USER=www-data
FASTCGI_GROUP=www-data
SOCKET=/var/run/php-fastcgi/php-fastcgi.socket
PIDFILE=/var/run/php-fastcgi/php-fastcgi.pid
CHILDREN=6
PHP5=/usr/bin/php5-cgi

/usr/bin/spawn-fcgi -s $SOCKET -P $PIDFILE -C $CHILDREN -u $FASTCGI_USER -g $FASTCGI_GROUP -f $PHP5
```

Create file `/etc/init.d/php-fastcgi`, make it executable `chmod +x /etc/init.d/php-fastcgi` and register it for startup `update-rc.d php-fastcgi defaults`.
```
#!/bin/bash

PHP_SCRIPT=/usr/bin/php-fastcgi
FASTCGI_USER=www-data
FASTCGI_GROUP=www-data
PID_DIR=/var/run/php-fastcgi
PID_FILE=/var/run/php-fastcgi/php-fastcgi.pid
RET_VAL=0

case "$1" in
    start)
      if [[ ! -d $PID_DIR ]]
      then
        mkdir $PID_DIR
        chown $FASTCGI_USER:$FASTCGI_GROUP $PID_DIR
        chmod 0770 $PID_DIR
      fi
      if [[ -r $PID_FILE ]]
      then
        echo "php-fastcgi already running with PID `cat $PID_FILE`"
        RET_VAL=1
      else
        $PHP_SCRIPT
        RET_VAL=$?
      fi
  ;;
    stop)
      if [[ -r $PID_FILE ]]
      then
        kill `cat $PID_FILE`
        rm $PID_FILE
        RET_VAL=$?
      else
        echo "Could not find PID file $PID_FILE"
        RET_VAL=1
      fi
  ;;
    restart)
      if [[ -r $PID_FILE ]]
      then
        kill `cat $PID_FILE`
        rm $PID_FILE
        RET_VAL=$?
      else
        echo "Could not find PID file $PID_FILE"
      fi
      $PHP_SCRIPT
      RET_VAL=$?
  ;;
    status)
      if [[ -r $PID_FILE ]]
      then
        echo "php-fastcgi running with PID `cat $PID_FILE`"
        RET_VAL=$?
      else
        echo "Could not find PID file $PID_FILE, php-fastcgi does not appear to be running"
      fi
  ;;
    *)
      echo "Usage: php-fastcgi {start|stop|restart|status}"
      RET_VAL=1
  ;;
esac
exit $RET_VAL
```
