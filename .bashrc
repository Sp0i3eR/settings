# /etc/skel/.bashrc
#
# This file is sourced by all *interactive* bash shells on startup,
# including some apparently interactive shells such as scp and rcp
# that can't tolerate any output.  So make sure this doesn't display
# anything or bad things will happen !


# Test for an interactive shell.  There is no need to set anything
# past this point for scp and rcp, and it's important to refrain from
# outputting anything in those cases.
if [[ $- != *i* ]] ; then
	# Shell is non-interactive.  Be done now!
	return
fi


# Put your fun stuff here.
alias ls='ls -lah --color=auto'
alias gvim='gvim --remote-tab-silent'
alias htpasswd='htpasswd -nmb'
export RSYNC_RSH=ssh
alias rscp="rsync --partial --progress --rsh=ssh"
alias mdd='mkdir `date +%F`'
alias mdt='mkdir `date +%F-%H-%M`'

alias emerge='sudo emerge'
alias layman='sudo layman'
alias eselect='sudo eselect'
