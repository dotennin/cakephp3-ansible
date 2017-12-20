#!/bin/bash
#set -e
 
echo "Running Ansible"
bash -c "ansible-playbook $1/playbook.yml --inventory-file=$1/hosts --connection=local"

exec "$@"
