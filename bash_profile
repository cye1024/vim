# for color
export CLICOLOR=2
# \h:\W \u\$
export PS1='\[\033[01;33m\]\u@\h\[\033[01;31m\] \W\$\[\033[00m\] '
# grep
alias grep='grep --color=always'
alias ll='ls -hrlt'
alias la='ls -arlt'
alias l='ll'
alias gs='git status'
alias gc='git checkout'
alias gp='git pull'
alias vi='vim'

alias dk='docker'
alias dr='docker run'

test -e "${HOME}/.iterm2_shell_integration.bash" && source "${HOME}/.iterm2_shell_integration.bash"

export YSTS=/Users/cye/work/chiefclouds/yellowstone/Ytrans/src/yellowstone/adserver-datatrans
export YSRL=/Users/cye/work/chiefclouds/yellowstone/Yrelay/src/yellowstone/adserver-datarelay
export YSAS=/Users/cye/work/chiefclouds/yellowstone/Yadserver/src/yellowstone/adserver

export PRL=/Users/cye/work/chiefclouds/pmp/Prelay/src/pmp/adserver-datarelay
export PTS=/Users/cye/work/chiefclouds/pmp/Ptrans/src/pmp/adserver-datatrans
export PAS=/Users/cye/work/chiefclouds/pmp/Padserver/src/pmp/adserver_new

export DAS=/Users/cye/work/chiefclouds/dsp/Dadserver/src/adserver
export DTS=/Users/cye/work/chiefclouds/dsp/Dtrans/src/dsp/datatrans
export DRL=/Users/cye/work/chiefclouds/dsp/Drelay/src/dsp/datarelay

export CARK=/Users/cye/persional/cark/src/triple/cmd/tripled/

#eval "$(docker-machine env default)"

export GOPATH=/Users/cye/tools/gopath
export GOBIN=$GOPATH/bin
export PATH=$GOBIN:$PATH:/Users/cye/bin

export LC_ALL=en_US.UTF-8  
export LANG=en_US.UTF-8

# Add environment variable COCOS_CONSOLE_ROOT for cocos2d-x
export COCOS_CONSOLE_ROOT=/Users/cye/persional/cocos/cocos2d-x-cocos2d-x-3.10/tools/cocos2d-console/bin
export PATH=$COCOS_CONSOLE_ROOT:$PATH

# Add environment variable COCOS_X_ROOT for cocos2d-x
export COCOS_X_ROOT=/Users/cye/persional/cocos
export PATH=$COCOS_X_ROOT:$PATH

# Add environment variable COCOS_TEMPLATES_ROOT for cocos2d-x
export COCOS_TEMPLATES_ROOT=/Users/cye/persional/cocos/cocos2d-x-cocos2d-x-3.10/templates
export PATH=$COCOS_TEMPLATES_ROOT:$PATH
