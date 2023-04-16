#!/bin/bash

# below arguments should be changed everytime you run script
mysql -u root -proot -e "create user 'replicator'@'%' identified by 'replicator@321';"
mysql -u root -proot -e "grant replication slave on *.* to 'replicator'@'%';"
mysql -u root -proot -e "grant all privileges on *.* to 'replicator'@'%';"
mysql -u root -proot -e "flush privileges;"
mysql -u root -proot -e "show master status;"