# Lines configured by zsh-newuser-install
bindkey -e
# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename '/home/jason/.zshrc'

autoload -Uz compinit
zstyle ':completion:*' menu select
zmodload zsh/complist
compinit
_comp_options+=(globdots)	#Done to be able to view dot files

# End of lines added by compinstall

# vi mode
bindkey -v
export KEYTIMEOUT=1

# Vim Key Binds for menu :
bindkey -M menuselect 'h' vi-backward-char
bindkey -M menuselect 'k' vi-up-line-or-history
bindkey -M menuselect 'l' vi-forward-char
bindkey -M menuselect 'j' vi-down-line-or-history

#PROMPT='%F{3}%n%f@%F{5}%m%f [ %F{blue}%B%~%b%f ]# '
PROMPT='%F{185}s%F{191}a%F{227}r%F{221}c%F{215}h%f %F{209}[%f%F{214}%B%~%b%f%F{209}]%f# '

#Variables
LS_COLORS="di=1;33"
export LS_COLORS

#Alias
alias grep='grep --color=auto'
alias ls='ls --color=auto'
alias nf='neofetch'
alias n='nvim'
alias nrc='nvim ~/.config/nvim/init.vim'
alias zrc='nvim ~/.zshrc'
alias i3rc='nvim ~/.config/i3/config'

##Power Management
alias off='systemctl poweroff'
alias boot='systemctl reboot'

#Run at start?
source /home/jason/.git/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
