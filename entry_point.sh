#!/bin/bash
#set -e
 
echo "Running Ansible"
bash -c "ansible-playbook playbook.yml --inventory-file=hosts --connection=local"

exec "$@"
