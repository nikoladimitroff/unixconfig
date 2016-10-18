#
# ~/.bashrc
#

alias ls='ls --color=auto'
PS1='[\u@\h \W]\$ '

gitssh () {
    eval `ssh-agent -s`
    ssh-add ~/.ssh/id_rsa
}
git-syncpages () {
    branch=$(git symbolic-ref --short HEAD)
    git checkout gh-pages
    git merge $branch
    git push origin gh-pages
    git checkout $branch
}
alias gitshare="git daemon --reuseaddr --verbose --base-path=. --export-all"

# Uncomment for archlinux
# Start dhcpcd
#sudo dhcpcd ens33
# Disable that fucker TTY
#stty -ixon

# Git settings
git config --global user.name "Nikola Dimitroff"
git config --global user.email "dimitroff.nikola@gmail.com"
git config --global push.default simple

echo "All is fine"
