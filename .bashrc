#
# ~/.bashrc
#




alias ls='ls --color=auto'
PS1='[\u@\h \W]\$ '

gitssh () {
    eval `ssh-agent -s`
    ssh-add /home/nikola/.ssh/id_rsa
}
vims () {
    vim "$@" -u /home/nikola/config/.vimrc
}
instances () {
    instances=$(ps aux | grep $1 | wc -l)
    return $instances
}

# Start dhcpcd
sudo dhcpcd ens33

# Disable that fucker TTY
stty -ixon

# Git settings
sudo git config --global user.name "Nikola Dimitroff"
sudo git config --global user.email "dimitroff.nikola@gmail.com"
sudo git config --global push.default simple

echo "All is fine"
