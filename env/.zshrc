# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

source $HOME/personal/zsh/powerlevel10k/powerlevel10k.zsh-theme
source $HOME/personal/zsh/zsh-autosuggestions/zsh-autosuggestions.zsh

# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename '/home/f3k/.zshrc'


# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

#Aliases
alias v="nvim"
alias vz="v ~/.zshrc"
alias vc="v ~/.config/nvim"
alias vcf="v ~/.config"
alias vi3="v ~/.config/i3"
alias src="source ~/.zshrc"
alias norm="norminette"
alias ..="cd .."
alias la="ls -a"
alias ll="ls -l"
alias lla="ls -la"
alias ga="git add"
alias gst="git status"
alias gc="git clone"
alias gco="git checkout"
alias gcm="git commit -m"
alias gp="git push"

export PATH="$PATH:$HOME/.local/scripts"

export TERM="xterm-256color"
export XDG_DATA_DIRS="$XDG_DATA_DIRS:/var/lib/flatpak/exports/share"

export PATH=~/.scripts/cpp_init:$PATH

source $HOME/personal/zsh/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source ~/.zsh_profile
