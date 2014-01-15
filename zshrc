# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="jluostar"

# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

# Set to this to use case-sensitive completion
# CASE_SENSITIVE="true"

# Comment this out to disable weekly auto-update checks
DISABLE_AUTO_UPDATE="true"

# Uncomment following line if you want to disable colors in ls
# DISABLE_LS_COLORS="true"

# Uncomment following line if you want to disable autosetting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment following line if you want red dots to be displayed while waiting for completion
# COMPLETION_WAITING_DOTS="true"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(osx ruby rbenv git vagrant sublime)

source $ZSH/oh-my-zsh.sh

# Customize to your needs...
setopt NO_BEEP
unsetopt correct_all

export TERM="xterm-256color"

# Set locale
export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8

# Setup Amazon EC2 Command-Line Tools
export JAVA_HOME="$(/usr/libexec/java_home)"
export EC2_HOME="/usr/local/Library/LinkedKegs/ec2-api-tools/jars"
export EC2_PRIVATE_KEY="$(/bin/ls "$HOME"/.ec2/pk-*.pem | /usr/bin/head -1)"
export EC2_CERT="$(/bin/ls "$HOME"/.ec2/cert-*.pem | /usr/bin/head -1)"

# IAM & ELB tools
export AWS_IAM_HOME="/usr/local/opt/aws-iam-tools/libexec"
export AWS_CREDENTIAL_FILE=$HOME/.aws-credentials-master
export AWS_ELB_HOME="/usr/local/Library/LinkedKegs/elb-tools/jars"

# Play Framework
export PATH=$PATH:~/bin/play

# Python tools installed with pip
export PATH=$PATH:/usr/local/share/python

# Shortcut for restarting audio
alias kill_audio="sudo kill -9 `ps ax|grep 'coreaudio[a-z]' |awk '{print $1}'`"
