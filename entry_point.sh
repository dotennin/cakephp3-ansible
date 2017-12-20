#!/bin/bash
#set -e
 
echo "Running Ansible"
bash -c "ansible-playbook /ansible/playbook.yml --inventory-file=/ansible/hosts --connection=local"

exec "$@"
