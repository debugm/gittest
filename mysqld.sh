#! /usr/bin/expect

spawn mysqldump -uroot -p payment1
expect  "*password:"
send "weiwei9527\n"
expect eof
