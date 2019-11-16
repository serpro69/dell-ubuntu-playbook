# Dell Ubuntu Playbook

This playbook installs and configures software I use on my Dell workstation (currently Dell Precision 5530 running Ubuntu 18.04).  

Everything that I will be able to automate will be done with Ansible, but I assume some manual steps are still going to be required. Some of them will be documented here and others in my [dell-precision-5530_ubuntu-win_dualboot repo](https://github.com/serpro69/dell-precision-5530_ubuntu-win_dualboot).  

This is a WIP project and mostly serves for the following purposes for me: to better learn Ansible, document my current laptop setup, and try to achieve a painless setup and configuration when I decide to change my workstation and or do some updates (i.e., install a newer version of Ubuntu.)


## Table of Contents
* [Installation](#installation)
  * [Running a single playbook](#running-a-single-playbook)
* [Default Configuration](#default-configuration)
* [Thanks](#thanks)


## Installation
* Install Ansible
* Clone this repo: `git clone git@github.com:serpro69/dell-ubuntu-playbook.git`
* Open repo directory: `cd dell-ubuntu-playbook`
* Install requirements: `make init` || `ansible-galaxy install -r requirements.yml`
* Run the playbook: `make play` || `ansible-playbook site.yml -i inventory`

### Running a single playbook
It is possible to run only one of the playbooks by running the appropriate `make` command or specifying the playbook file.
The available subsets are: `base`, `software`, `dotfiles`.  

For example, to provision only dotfiles, one could either run: `make dotfiles`, or alternatively: `ansible-plyabook dotfiles.yml -i inventory`.  

### Using vagrant for local testing
* Spin up the VM with `vagrant up`
* Run the playbooks against the VM with `-i inventory`

**[⬆ back to top](#table-of-contents)**

## Default Configuration
<details><summary><b>Packages (installed with <code>apt</code>):</b></summary>
<p>

* ttf-mscorefonts-installer
* keepassxc
* xclip
* stow
* rxvt-unicode
* zsh
* vim
* vim-nox
* vim-gnome
* vim-gtk
* gir1.2-gtop-2.0
* lm-sensors
* tmux
* cryptomator
* backintime-qt4
* pomodoro-indicator
* cpanminus
* npm
* flameshot
* recode
* qbittorrent
* jq
* vagrant
* virtualbox-6.0
* libevent-dev
* libncurses5-dev
* libcanberra-gtk-module
* libcanberra-gtk3-module
* libappindicator-dev
* brave-keyring
* brave-browser
* thunderbird
* thunderbird-locale-en-us
* thunderbird-gnome-support
* network-manager-openvpn-gnome
* network-manager-openconnect-gnome
* openjdk-8-jdk
* openjdk-8-jre
* openjdk-8-d
* openjfx=8u161-b12-1ubuntu2
* openjfx-source=8u161-b12-1ubuntu2
* libopenjfx-java=8u161-b12-1ubuntu2
* libopenjfx-jni=8u161-b12-1ubuntu2
* php7.2
* php7.2-curl
* php7.2-xml
* docker-ce
* docker-compose

</p>
</details>


<details><summary><b>Packages (removed with <code>apt</code>):</b></summary>
<p>

* dnsmasq-base

</p>
</details>

<details><summary><b>Gnome Shell Extensions (installed):</b></summary>
<p>

* [alternate-tab@gnome-shell-extensions.gcampax.github.com]()
* [KStatusNotifierItem/AppIndicator Support : appindicatorsupport@rgcjonas.gmail.com](https://github.com/ubuntu/gnome-shell-extension-appindicator)
* [apps-menu@gnome-shell-extensions.gcampax.github.com]()
* [auto-move-windows@gnome-shell-extensions.gcampax.github.com]()
* [cpupower@mko-sl.de]()
* [dash-to-dock@micxgx.gmail.com]()
* [drive-menu@gnome-shell-extensions.gcampax.github.com]()
* [extensions@abteil.org]()
* [Hide_Activities@shay.shayel.org]()
* [launch-new-instance@gnome-shell-extensions.gcampax.github.com]()
* [minimizeall@scharlessantos.org]()
* [native-window-placement@gnome-shell-extensions.gcampax.github.com]()
* [noannoyance@sindex.com]()
* [openweather-extension@jenslody.de]()
* [places-menu@gnome-shell-extensions.gcampax.github.com]()
* [remove-dropdown-arrows@mpdeimos.com]()
* [update-extensions@franglais125.gmail.com]()
* [user-theme@gnome-shell-extensions.gcampax.github.com]()
* [Vitals@CoreCoding.com]()
* [windowsNavigator@gnome-shell-extensions.gcampax.github.com]()
* [alternate-tab@gnome-shell-extensions.gcampax.github.com]()
* [apps-menu@gnome-shell-extensions.gcampax.github.com]()
* [auto-move-windows@gnome-shell-extensions.gcampax.github.com]()
* [drive-menu@gnome-shell-extensions.gcampax.github.com]()
* [launch-new-instance@gnome-shell-extensions.gcampax.github.com]()
* [native-window-placement@gnome-shell-extensions.gcampax.github.com]()
* [places-menu@gnome-shell-extensions.gcampax.github.com]()
* [user-theme@gnome-shell-extensions.gcampax.github.com]()
* [window-list@gnome-shell-extensions.gcampax.github.com.bak]()
* [windowsNavigator@gnome-shell-extensions.gcampax.github.com]()

</p>
</details>

<details><summary><b>Gnome Shell Extensions (removed):</b></summary>
<p>

* top-icons-plus
* appindicator

</p>
</details>

**[⬆ back to top](#table-of-contents)**  


## ToDo
- [ ] Default configuration (readme)
- [ ] Overriding defaults (readme + impl)
- [ ] ToC (readme)
- [ ] CI with travis(impl)

**[⬆ back to top](#table-of-contents)**  


## Thanks
* [geerlingguy/mac-dev-playbook](https://github.com/geerlingguy/mac-dev-playbook) for the inspiration for making this project.

**[⬆ back to top](#table-of-contents)**  
