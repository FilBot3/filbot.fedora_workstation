default: collection-install-local

collection-install-local:
	ansible-galaxy collection install git+file:///$(shell pwd)/.git --force

collection-install-github:
	ansible-galaxy collection install git@github.com:FilBot3/filbot.fedora_workstation.git --force

collection-install:
	ansible-galaxy collection install community.general --force

galaxy-install:
	ansible-galaxy install -r requirements.yml

playbook:
	ansible-playbook playbooks/playbook_fedora_laptop_setup.yml --ask-become-pass
