alias ph='echo -e ${PATH//:/\\n}'          	 # Echo human-readable PATH
alias gs='git status'
alias gp='git pull'
#alias subl='open -a Sublime\ Text .'		# open dir in Sublime Text
#alias sublime='open -a Sublime\ Text'		# open file in Sublime Text
alias ll='ls -FGlAhp'                     	# classify, no group names, long list, skip implied dots, human readable, append slash for dirs
# Clone and cd to dir
gclone() {
  git clone "$1" && cd "$(basename $_ .git)"
}
alias gupdate='for d in ~/Code/*/ ; do (cd "$d" && git checkout master && git pull); done'
alias flushdns='sudo dscacheutil -flushcache; sudo killall -HUP mDNSResponder'

alias tf='terraform'
alias tfi='terraform init'
alias tfa='terraform apply'
alias tfp='terraform plan'
alias tfw='terraform workspace'
alias tg='terragrunt'

alias gitconfig='git config user.email "matthew.gutermuth@<EMAIL>.com" && git config user.name "Matt"'


export AWS_PROFILE=master-admin
export AWS_SDK_LOAD_CONFIG=1
function netslam {
  aws sso login
}


#alias slog='saml-login aws-assume-role'

function resetrole {
  unset AWS_PROFILE
}


function slog {
  resetrole
  saml-login aws-assume-role
}

function assumerole {
  export AWS_PROFILE=$1
}

function clear_creds {
  unset AWS_ACCESS_KEY_ID
  unset AWS_SECRET_ACCESS_KEY
  unset AWS_SESSION_TOKEN
}

alias awsdev='assumerole dev-admin'

alias awsprod='assumerole prod-admin'

alias awsmaster='assumerole master-admin'




# If not running interactively, don't do anything
case $- in
  *i*) ;;
    *) return;;
esac

# Path to the bash it configuration
export BASH_IT="/Users/matthewgutermuth/.bash_it"

# Lock and Load a custom theme file.
# Leave empty to disable theming.
# location /.bash_it/themes/
export BASH_IT_THEME='bobby'

# (Advanced): Change this to the name of your remote repo if you
# cloned bash-it with a remote other than origin such as `bash-it`.
# export BASH_IT_REMOTE='bash-it'

# (Advanced): Change this to the name of the main development branch if
# you renamed it or if it was changed for some reason
# export BASH_IT_DEVELOPMENT_BRANCH='master'

# Your place for hosting Git repos. I use this for private repos.
export GIT_HOSTING='git@git.domain.com'

# Don't check mail when opening terminal.
unset MAILCHECK

# Change this to your console based IRC client of choice.
export IRC_CLIENT='irssi'

# Set this to the command you use for todo.txt-cli
export TODO="t"

# Set this to false to turn off version control status checking within the prompt for all themes
export SCM_CHECK=true
# Set to actual location of gitstatus directory if installed
#export SCM_GIT_GITSTATUS_DIR="$HOME/gitstatus"
# per default gitstatus uses 2 times as many threads as CPU cores, you can change this here if you must
#export GITSTATUS_NUM_THREADS=8

# Set Xterm/screen/Tmux title with only a short hostname.
# Uncomment this (or set SHORT_HOSTNAME to something else),
# Will otherwise fall back on $HOSTNAME.
#export SHORT_HOSTNAME=$(hostname -s)

# Set Xterm/screen/Tmux title with only a short username.
# Uncomment this (or set SHORT_USER to something else),
# Will otherwise fall back on $USER.
#export SHORT_USER=${USER:0:8}

# Set Xterm/screen/Tmux title with shortened command and directory.
# Uncomment this to set.
#export SHORT_TERM_LINE=true

# Set vcprompt executable path for scm advance info in prompt (demula theme)
# https://github.com/djl/vcprompt
#export VCPROMPT_EXECUTABLE=~/.vcprompt/bin/vcprompt

# (Advanced): Uncomment this to make Bash-it reload itself automatically
# after enabling or disabling aliases, plugins, and completions.
# export BASH_IT_AUTOMATIC_RELOAD_AFTER_CONFIG_CHANGE=1

# Uncomment this to make Bash-it create alias reload.
# export BASH_IT_RELOAD_LEGACY=1

# Load Bash It
source "$BASH_IT"/bash_it.sh
export PATH="/usr/local/opt/mongodb-community@4.2/bin:$PATH"

# The next line updates PATH for the Google Cloud SDK.
if [ -f '/Users/matthewgutermuth/google-cloud-sdk/path.bash.inc' ]; then . '/Users/matthewgutermuth/google-cloud-sdk/path.bash.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/Users/matthewgutermuth/google-cloud-sdk/completion.bash.inc' ]; then . '/Users/matthewgutermuth/google-cloud-sdk/completion.bash.inc'; fi
export PATH="/usr/local/opt/openjdk/bin:$PATH"
