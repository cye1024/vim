# for color
export CLICOLOR=2
function git-branch-name {
    #git symbolic-ref HEAD 2>/dev/null | cut -d"/" -f 3
    git symbolic-ref --short -q HEAD 2>/dev/null
}
function git-branch-prompt {
  local branch=`git-branch-name`
  if [ $branch ]; then printf " [%s]" $branch; fi
}
PS1="\[\033[01;33m\]\u@\h \[\033[01;31m\]\W\[\033[0m\]\[\033[0;32m\]\$(git-branch-prompt)\[\033[0m\]\$ "

# grep
alias grep='grep --color=always'
alias ll='ls -hrlt'
alias la='ls -arlt'
alias l='ll'
alias gs='git status'
alias gc='git checkout'
alias gp='git pull'
alias vi='vim'

test -e "${HOME}/.iterm2_shell_integration.bash" && source "${HOME}/.iterm2_shell_integration.bash"

export GOPATH=/Users/yech/codehub/go/gopath
export GOBIN=$GOPATH/bin
export PATH=$GOBIN:$PATH:/Users/yech/bin

export LC_ALL=en_US.UTF-8  
export LANG=en_US.UTF-8

export JAVA_HOME=/Library/Java/JavaVirtualMachines/jdk1.8.0_171.jdk/Contents/Home
