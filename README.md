# Dell Ubuntu Playbook

This playbook installs and configures software I use on my Dell workstation (currently Dell Precision 5530 running Ubuntu 18.04).  

Everything that I will be able to automate will be done with Ansible, but I assume some manual steps are still going to be required. Some of them will be documented here and others in my [dell-precision-5530_ubuntu-win_dualboot repo](https://github.com/serpro69/dell-precision-5530_ubuntu-win_dualboot).  

This is a WIP project and mostly serves for the following purposes for me: to better learn Ansible, document my current laptop setup, and try to achieve a painless setup and configuration when I decide to change my workstation and or do some updates (i.e., install a newer version of Ubuntu.)


## Installation
* Install Ansible
* Clone this repo: `git clone git@github.com:serpro69/dell-ubuntu-playbook.git`
* Open repo directory: `cd dell5530-ubuntu-playbook`
* Install requirements: `make init` || `ansible-galaxy install -r requirements.yml`
* Run the playbook: `make play` || `ansible-playbook site.yml -i inventory`

### Running a single playbook
It is possible to run only one of the playbooks by running the appropriate `make` command specifying the playbook file.
The available subsets are: `base`, `software`, `dotfiles`.  

For example, to provision only dotfiles, one could either run: `make dotfiles`, or alternatively: `ansible-plyabook dotfiles.yml -i inventory`.


## ToDo
- [ ] Default configuration (readme)
- [ ] Overriding defaults (readme + impl)
- [ ] ToC (readme)
- [ ] CI with travis(impl)


## Thanks
* [geerlingguy/mac-dev-playbook](https://github.com/geerlingguy/mac-dev-playbook) for the inspiration for making this project.
