#!/bin/bash
#set -e
 
echo "Running Ansible"
TEMP_FILE = /tmp/cakephp3-ansible
bash -c "ansible-playbook playbook.yml --inventory-file=hosts --connection=local"

exec "$@"
