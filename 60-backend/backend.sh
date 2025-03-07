#!/bin/bash

component=$1
environment=$2
echo "Component: $component, Environment: $environment"
dnf install ansible -y
ansible-pull -i localhost, -U https://github.com/kanth-sri/expense-ansible-roles-tf.git main.yaml -e component=$component -e env=$environment