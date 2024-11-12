eval "$(rbenv init -)"

alias sail='[ -f sail ] && bash sail || bash vendor/bin/sail'
alias g='git'
alias gi='init'
alias ga='git add'
alias gcm='git commit -m'
alias gpo='git push origin'
alias gst='git status'
alias gb='git branch'
alias gd='git diff'
alias gl='git log --graph --decorate --oneline --color --all --pretty="format:%C(yellow)%h %C(green)%cd %C(reset)%s %C(red)%d %C(cyan)[%an]"'
alias glo='git log --oneline'
alias glg='git log --graph'
alias dc='docker compose'
alias dcps='docker compose ps'
alias dcu='docker compose up'
alias dcud='docker compose up -d'
alias dce='docker compose exec'
alias dcd='docker compose down'
alias vz='vim ~/.zshrc'
alias sz='source ~/.zshrc'
alias grro='git remote rm origin'
alias grao='git remote add origin'
alias grv='git remote -v'
alias grso='git remote set-url origin'
alias gsw='git switch'
alias gswc='git switch -c'
alias gh-watch='gh run list | grep $(git brach --show-current) | cut -f 7 | head -n 1 | xargs gh run watch'
alias gh-view='gh run list | grep $(git branch --show-current) | cut -f 7 | head -n 1 | xargs gh run view'
alias gh-log='gh run list | grep $(git branch --show-current) | cut -f 7 | head -n 1 | xargs gh run view --log'
alias ls='ls -F --color=auto'
alias ll='ls -la --color=auto'

function code {
    if [[ $# = 0 ]]
    then
        open -a "Visual Studio Code"
    else
        local argPath="$1"
        [[ $1 = /* ]] && argPath="$1" || argPath="$PWD/${1#./}"
        open -a "Visual Studio Code" "$argPath"
    fi
}

eval "$(starship init zsh)"
