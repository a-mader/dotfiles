HISTFILE=~/.zsh_history
HISTSIZE=10000
SAVEHIST=10000
setopt HIST_EXPIRE_DUPS_FIRST
setopt HIST_IGNORE_DUPS
setopt HIST_IGNORE_ALL_DUPS
setopt HIST_FIND_NO_DUPS
setopt HIST_IGNORE_SPACE
setopt HIST_SAVE_NO_DUPS
setopt HIST_REDUCE_BLANKS
setopt HIST_VERIFY

alias dps='docker ps'
alias dpa='docker ps -a'
alias dlogs='docker logs'
alias dc='docker compose'
alias dcud='docker compose up -d'
alias dcps='docker compose ps'
alias dcd='docker compose down'
alias sys='systemctl status'
alias syr='systemctl restart'
alias l='ls -lah'
alias ..='cd ..'
alias ...='cd .. && cd ..'

zinit ice pick"async.zsh" src"pure.zsh" # with zsh-async library that's bundled with it.
zinit light sindresorhus/pure

zinit light zsh-users/zsh-autosuggestions
zinit light zdharma-continuum/fast-syntax-highlighting

zinit snippet OMZP::command-not-found
