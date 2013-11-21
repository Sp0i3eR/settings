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
alias mdt='cd `date +%F-%H-%M | xargs -I % bash -c "mkdir %;echo %"`'
alias dotpdf='dot -Tpdf -O'
alias dotpng='dot -Tpng -O'
alias screen='screen -RAD'


export LONG_RUNNING_COMMAND_TIMEOUT=20
export LONG_RUNNING_PREEXEC_LOCATION=$HOME/.undistract/preexec.bash
. .undistract/long-running.bash
notify_when_long_running_commands_finish_install
PS1="\n\$(if [[ \$? == 0 ]]; then echo \"\[\033[0;34m\]\"; else echo \"\[\033[0;31m\]\"; fi)\342\226\210\342\226\210 [ \W ] [ \t ]\n\[\033[0m\]\342\226\210\342\226\210 "
