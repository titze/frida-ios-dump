#!/usr/bin/expect -f
set app [lindex $argv 0];

spawn ssh root@localhost -p 2222
expect -exact "root@localhost's password: "
send -- "alpine\r"
expect "Hanss-iPhone"
send -- "ps A | grep \.app | grep Application |  sed 's/\?.*//'| xargs kill\r\n"
send -- "logout\r"
interact