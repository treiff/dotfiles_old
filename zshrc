# Allow completing of the remainder of a command
bindkey "^N" insert-last-word

# Show contents of directory after cd-ing into it
chpwd() {
  ls -lrthG
}

# Save a ton of history
HISTSIZE=20000
HISTFILE=~/.zsh_history
SAVEHIST=20000

# Enable completion
autoload -U compinit
compinit

# Disable flow control commands (keeps C-s from freezing everything)
stty start undef
stty stop undef

# RVM
# insert username here
[[ -s "/Users/trevor/.rvm/scripts/rvm" ]] && source "/Users/trevor/.rvm/scripts/rvm"

# Colors for -ls command
export CLICOLOR=1
export LS_COLORS="di=1;34;41:ln=1;35;46:so=32;40:pi=33;40:ex=31;40:bd=34;46:cd=34;43:su=0;41:sg=0;46:tw=0;42:ow=0;43:"

# Sourcing of other files
source $HOME/.dotfiles/zsh/aliases
source $HOME/.dotfiles/zsh/functions
source $HOME/.dotfiles/zsh/prompt
source $HOME/.dotfiles/zsh/z

# Bundler editor
export EDITOR=vim

NPM_PACKAGES="${HOME}/.npm-packages"

export PATH=$PATH:bin:~/bin:/usr/local/bin:/usr/local/sbin:/usr/local/mysql/bin:/usr/local/git/bin:/usr/bin:/bin:/usr/sbin:/sbin:$HOME/.rvm/bin:$NPM_PACKAGES/bin
unset MANPATH
export MANPATH="$NPM_PACKAGES/share/man:$(manpath)"

# Mysql
MYSQL=/usr/local/mysql/bin
export PATH=$PATH:$MYSQL
export DYLD_LIBRARY_PATH=/usr/local/mysql/lib:$DYLD_LIBRARY_PATH

# added by travis gem
[ -f /Users/trevor/.travis/travis.sh ] && source /Users/trevor/.travis/travis.sh
