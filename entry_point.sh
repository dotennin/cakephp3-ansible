#!/bin/bash
#set -e
 
chmod -x ${TEMP_HOSTS}
echo "Running Ansible"
TEMP_FILE = /tmp/cakephp3-ansible
bash -c "git clone https://github.com/nochi0105/cakephp3-ansible.git ${TEMP_FILE}"
chmod +x ${TEMP_FILE} -R
bash -c "ansible-playbook ${TEMP_FILE}/playbook.yml --inventory-file=${TEMP_FILE}/hosts --connection=local"
rm -rf ${TEMP_FILE}

exec "$@"
