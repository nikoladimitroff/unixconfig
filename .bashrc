#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
PS1='[\u@\h \W]\$ '

gitssh () {
    eval `ssh-agent -s`
    ssh-add /home/nikola/.ssh/id_rsa
}

# Start dhcpcd
instances=$(ps aux | grep dhcpcd | wc -l)
if [ $instances -eq 1 ]; then
    sudo dhcpcd ens33
else
    echo It kinda looks dhcpcd is runnin
fi

# Disable that fucker TTY
stty -ixon

# Git settings
sudo git config --global user.name "Nikola Dimitroff"
sudo git config --global user.email "dimitroff.nikola@gmail.com"
sudo git config --global push.default simple
