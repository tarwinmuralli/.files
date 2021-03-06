# SETS VI MODE
set -o vi

# DISABLES CTRL_S
stty -ixon

# Binds
bind "set completion-ignore-case on"
bind -m vi-normal "\\C-l":clear-screen

HISTSIZE= HISTFILESIZE= # INFINTE HISTORY

# SHOPT
shopt -s checkwinsize
shopt -s autocd # change to named directory
shopt -s cdspell # autocorrects cd misspellings
shopt -s cmdhist # save multi-line commands in history as single line
shopt -s histappend # do not overwrite history
shopt -s expand_aliases # expand aliases
shopt -s checkwinsize # checks term size when bash regains control
shopt -s histappend # append to the history file, don't overwrite it
shopt -s checkwinsize # check the window size after each command and, if necessary,

# Alias
alias grep="grep --color=auto"
alias dir='dir --color=auto'
alias vdir='vdir --color=auto'
alias fgrep='fgrep --color=auto'
alias egrep='egrep --color=auto'
alias ll='ls -CaFhNl --color=auto --group-directories-first'
alias la='ls -CaFhN --color=auto --group-directories-first'
alias df='df -h'
alias jctl="journalctl -p 3 -xb"

### ARCHIVE EXTRACTION ##BEGIN
# usage: ex <file>
ex ()
{
  if [ -f $1 ] ; then
    case $1 in
      *.tar.bz2)   tar xjf $1   ;;
      *.tar.gz)    tar xzf $1   ;;
      *.bz2)       bunzip2 $1   ;;
      *.rar)       unrar x $1   ;;
      *.gz)        gunzip $1    ;;
      *.tar)       tar xf $1    ;;
      *.tbz2)      tar xjf $1   ;;
      *.tgz)       tar xzf $1   ;;
      *.zip)       unzip $1     ;;
      *.Z)         uncompress $1;;
      *.7z)        7z x $1      ;;
      *.deb)       ar x $1      ;;
      *.tar.xz)    tar xf $1    ;;
      *.tar.zst)   unzstd $1    ;;
      *)           echo "'$1' cannot be extracted via ex()" ;;
    esac
  else
    echo "'$1' is not a valid file"
  fi
}
## END

# Prompt
PS1='\[\e[0;31m\][\[\e[0m\]\u\[\e[0;31m\]@\[\e[0m\]core\[\e[0;31m\]]\[\e[m\] \[\e[0;38;5;253m\]\w\[\e[m\] \[\e[0m\]$\[\e[m\] \[\e0'

# Folder Bookmarks
alias cc="cd ~/.config && la"
alias sc="cd ~/.local/bin && la"
alias dc="cd ~/dox

# File Bookmark

alias bb="nvim ~/.bashrc"
alias cbsp="nvim ~/.config/bspwm/bspwmrc"
alias csx="nvim ~/.config/sxhkd/sxhkdrc"
alias cvim="nvim ~/.config/nvim/init.vim"
alias cpl="nvim ~/.config/polybar/config"
alias news="nvim ~/.config/newsboat/urls"

# Programs

alias p="sudo pacman"
alias y="yay"
alias SS="sudo systemctl"
alias v="nvim"
alias vi="vifm"
alias mkd="mkdir -v"
alias yta="youtube-dl -f bestaudio"
alias za="zathura"
