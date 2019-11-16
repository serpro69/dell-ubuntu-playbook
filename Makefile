export ANSIBLE_CONFIG = ./ansible.cfg

init:
		ansible-galaxy install -r requirements.yml

play:
		ansible-playbook site.yml -i inventory

# Run separate playbooks
base:
		ansible-plyabook base.yml -i inventory

software:
		ansible-plyabook software.yml -i inventory

dotfiles:
		ansible-plyabook dotfiles.yml -i inventory
