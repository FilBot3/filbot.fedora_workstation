collection-install-local:
	ansible-galaxy collection install git+file:///$(shell pwd)/.git --force

collection-install-github:
	ansible-ansible collection install git@github.com:FilBot3/filbot.fedora_workstation.git --force
