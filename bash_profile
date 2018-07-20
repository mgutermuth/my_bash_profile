alias ph='echo -e ${PATH//:/\\n}'          	 # Echo human-readable PATH
alias gs='git status'
alias gp='git pull'
alias subl='open -a Sublime\ Text .'		# open dir in Sublime Text
alias sublime='open -a Sublime\ Text'		# open file in Sublime Text
alias ll='ls -FGlAhp'                     	# classify, no group names, long list, skip implied dots, human readable, append slash for dirs
# Clone and cd to dir
gclone() {
  git clone "$1" && cd "$(basename $_ .git)"
}
alias flushdns='sudo killall -HUP mDNSResponder;sudo killall mDNSResponderHelper;sudo dscacheutil -flushcache'

# After this was bash-it configs that were default. Don't forget to reinstall bash-it
#Oh and also OPAM
