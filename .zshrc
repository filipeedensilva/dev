
# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename '/home/f3k/.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall

source ~/.zsh/zsh-autosuggestions/zsh-autosuggestions.zsh
source ~/.zsh/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source ~/.zsh/powerlevel10k/powerlevel10k.zsh-theme

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

#Aliases
alias v="nvim"
alias vz="nvim ~/.zshrc"
alias vc="~/.config/nvim && nvim ."
alias cls="clear"
alias src="source ~/.zshrc"
alias ll="ls -l"
alias dmon="sh ~/scripts/dmonitor.sh"
alias norm="norminette"
alias vv="nvim ~/.vimrc"
alias ..="cd .."
alias la="ls -a"
alias ll="ls -l"
alias lla="ls -la"
alias ga="git add"
alias gs="git status"
alias gc="git commit -m"
alias gp="git push"
alias dr="dart run"

alias fran="$HOME"/francinette/tester.sh
alias paco="$HOME"/francinette/tester.sh

alias francinette=/home/f3k/francinette/tester.sh

export PATH="$PATH:/usr/lib/dart/bin"
