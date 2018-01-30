#!/bin/bash
# service mysqld start
# sleep 1
# echo "start change privaliege;"
# spawn mysql -u root -p
# expect "password:" 
# send "/r"
# send "GRANT ALL PRIVILEGES ON *.* TO 'root'@'%' IDENTIFIED BY '' WITH GRANT OPTION;
# FLUSH PRIVILEGES;\r"
# send "exit;\r"
# expect eof
# echo "end change privaliege;"
# service mysqld status
supervisord -n