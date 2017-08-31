alias gpc="git duet-commit -v"
alias gc="gpc"

alias gpp="git pull --rebase && git push origin head"
alias gst="git status"

alias gcia="git commit --amend -Chead -a"

alias ls="ls -CF"
alias ll="ls -alF"
alias la="ls -A"
alias l="ls -CF"

alias em="emacs -nw"

alias wau="cd ~/workspace/apm-ui"
alias wat="cd ~/workspace/apm-tile"
alias wdm="cd ~/workspace/deployments-metrics"
alias wmr="cd ~/workspace/metrics-app-dev-release"
alias wmd="cd ~/go/src/github.com/pivotal-cf/metrics-data"
alias wmci="cd ~/workspace/metrics-ci"
alias lazy="git pull -r && gulp && git push"
alias flyc="fly -t concourse"
alias flych="fly -t concourse hijack"
alias flycb="fly -t concourse builds"

alias boshtime="source ~/workspace/deployments-metrics/scripts/set-bosh-env.sh ~/workspace/deployments-metrics/gcp-environments/versace"
