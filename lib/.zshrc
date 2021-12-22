alias l='ls -a'
alias ls='ls --color -F'
alias less='less -R'

alias -g L='| less'
alias -g H='| head'
alias -g T='| tail'
alias -g G='| sed "s|\t||g" | grep'

alias cp='cp -p'
alias grep='grep --color=always -n'

# cd省略
setopt AUTO_CD

# history関係
HISTFILE=~/.zsh_history
export HISTSIZE=1000
export SAVEHIST=100000
setopt hist_ignore_dups
setopt hist_ignore_all_dups
setopt hist_no_store

# 訂正、補完
setopt CORRECT_ALL
autoload -U compinit
compinit -u

zstyle ':completion:*:default' list-colors ${(s.:.)LS_COLORS}

# prompt
setopt PROMPT_SUBST
USER=`whoami`
HOST=`hostname`
export PROMPT=$'%{\e[1;31m%}''${USER}@${HOST}''$ '
export RPROMPT=$'%{\e[1;93m%}''[%(3~,%-1~/.../%2~,%~)]'$'%{\e[1;37m%}'

# fzf
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
