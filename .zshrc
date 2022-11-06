bindkey "^[[H" beginning-of-line
bindkey "^[[F" end-of-line
setopt histignoredups

export $(cat "${HOME}/.env" | xargs)

export HOMEBREW_NO_ANALYTICS=1
export EDITOR=vim

export CLICOLOR=1
export LSCOLORS=GxBxCxDxexegedabagaced
alias ls='ls -G'
alias ll='ls -alh'
alias grep='grep --color=auto'
alias tailf='tail -f'

parse_git_branch() {
  git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}
setopt PROMPT_SUBST
export PS1='%n@%m %F{green}%~%F{red}$(parse_git_branch)%F{white} $ '
