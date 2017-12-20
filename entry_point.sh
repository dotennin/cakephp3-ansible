#!/bin/bash
#set -e
 
echo "Running Ansible"
bash -c "ansible-playbook /cakephp3-ansible/playbook.yml --inventory-file=/cakephp3-ansible/hosts --connection=local"

exec "$@"
