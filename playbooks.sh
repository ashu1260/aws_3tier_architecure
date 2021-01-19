#!/bin/bash

sudo ./ip.sh

sudo ansible-playbook /home/hasher/ec2-ansible/ec2.yml

sudo ansible-playbook /home/hasher/ec2-ansible/php-web.yml  --ask-vault-pass
