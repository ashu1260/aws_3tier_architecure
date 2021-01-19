#!/bin/bash

output=$(aws ec2 describe-instances --filters 'Name=tag:Name,Values=Three_Tier' --query 'Reservations[].Instances[].[PublicIpAddress]' --output=text )

echo $output


echo -e "[ec2]\n$output  ansible_user=ec2-user ansible_ssh_private_key_file=/home/hasher/Downloads/aws-project4-key.pem" > /etc/ansible/hosts



