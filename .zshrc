# now, simply add these two lines in your ~/.zshrc
# source antidote
source ~/.antidote/antidote.zsh

# initialize plugins statically with ${ZDOTDIR:-~}/.zsh_plugins.txt
antidote load

autoload -Uz promptinit && promptinit && prompt pure
eval "$(pyenv init -)"
eval "$(pyenv virtualenv-init -)"
# make sure the --git-dir is the same as the
# directory where you created the repo above.
alias config="git --git-dir=$HOME/.dotfiles --work-tree=$HOME"
alias ls="ls -lh --color"
alias pbcopy="xclip -selection clipboard"
alias pbpaste="xclip -selection clipboard -o"
eval "$(/bin/brew shellenv)"
eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"
