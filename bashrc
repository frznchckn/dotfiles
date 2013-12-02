#${debian_chroot:+($debian_chroot)}\[\033[01;32m\]\u@\h\[\033[01;34m\] \w \$\[\033[00m\]
#export PS1='${debian_chroot:+($debian_chroot)}\[\033[01;32m\]\u@\h\[\033[01;34m\] \w\e[33;40m$(__git_ps1 " (%s)") \[\033[01;34m\]\n\D{%Y%m%d-%H%M} \# \e[32;40m\$\[\033[00m\] '
#$(__git_ps1 " (%s)")
#export PS1='${debian_chroot:+($debian_chroot)}\[\e[01;32m\]\u@\h\[\e[01;34m\] \w\[\e[33;1m\]$(__git_ps1 " (%s)")\[\e[34;1m\]\n\D{%Y%m%d-%H%M} \# \[\e[32;1m\]\$ \[\e[0m\]'
export PS1='${debian_chroot:+($debian_chroot)}\[\e[01;32m\]\u@\h\[\e[33;1m\] \w\[\e[31;1m\]$(__git_ps1 " (%s)")\[\e[35;1m\]\n\D{%Y%m%d-%H%M} \# \[\e[32;1m\]\$ \[\e[0m\]'
