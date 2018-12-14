#!/usr/bin/expect -f
set app [lindex $argv 0];

spawn ssh root@localhost -p 2222
expect -exact "root@localhost's password: "
send -- "alpine\r"
expect "Hanss-iPhone"
send -- "open $app\r\n"
send -- "logout\r"
interact