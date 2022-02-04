#!/bin/bash
sudo rabbitmqctl add_user devops BRad2@20easy!
sudo rabbitmqctl add_user fund rWEPFtAhW3sa
sudo rabbitmqctl add_user intranet jVx9ETpUzQ8qrZ7H
sudo rabbitmqctl add_user svc.agreement JJ92zyd0ICAZ
sudo rabbitmqctl add_user symbolbase.feeder sJeZQrbavKCzew8u
sudo rabbitmqctl add_user ted 7gaZ7cQArgpv
sudo rabbitmqctl set_user_tags devops administrator
sudo rabbitmqctl set_user_tags fund administrator
sudo rabbitmqctl set_user_tags intranet administrator
sudo rabbitmqctl set_user_tags svc.agreement administrator
sudo rabbitmqctl set_user_tags symbolbase.feeder administrator
sudo rabbitmqctl set_user_tags ted administrator
sudo rabbitmqctl set_permissions -p /  "devops" ".*" ".*" ".*"
sudo rabbitmqctl set_permissions -p /  "fund" ".*" ".*" ".*"
sudo rabbitmqctl set_permissions -p /  "intranet" ".*" ".*" ".*"
sudo rabbitmqctl set_permissions -p /  "svc.agreement" ".*" ".*" ".*"
sudo rabbitmqctl set_permissions -p /  "symbolbase.feeder" ".*" ".*" ".*" 
sudo rabbitmqctl set_permissions -p /  "ted" ".*" ".*" ".*"