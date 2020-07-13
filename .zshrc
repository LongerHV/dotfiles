# Default editor
export VISUAL=vim
export EDITOR="$VISUAL"

# History in cache directory:
HISTSIZE=10000
SAVEHIST=10000
HISTFILE=~/.cache/zsh/history

# Edit line in vim with ctrl-e:
autoload edit-command-line; zle -N edit-command-line
bindkey '^e' edit-command-line

# zsh plugin bindkeys
bindkey '^ ' autosuggest-accept

# zsh plugin configuration
ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE="fg=13,regular,underline"
ZSH_AUTOSUGGEST_STRATEGY=(history completion)

# source plugins
source $HOME/.zsh_custom/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh
source $HOME/.zsh_custom/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

# add broot command
source $HOME/.config/broot/launcher/bash/br
alias br='br -h'

# run neofetch for extra flex
neofetch --gtk2 off --gtk3 off

# alias for managing dotfiles git bare repo
alias 'config=/usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'

# fix tldr
alias tldr='LANG=en_US.utf8 tldr'

# aliases for config editing
alias cq='$EDITOR $HOME/.config/qtile/config.py'
alias ca='$EDITOR $HOME/.config/alacritty/alacritty.yml'
alias cv='$EDITOR $HOME/.vim/vimrc'
alias cz='$EDITOR $HOME/.zshrc'

SPACESHIP_PROMPT_ADD_NEWLINE=true
SPACESHIP_PROMPT_SEPARATE_LINE=true
SPACESHIP_CHAR_SYMBOL=❯
SPACESHIP_CHAR_SUFFIX=" "
SPACESHIP_HG_SHOW=false
SPACESHIP_PACKAGE_SHOW=false
SPACESHIP_NODE_SHOW=false
SPACESHIP_RUBY_SHOW=false
SPACESHIP_ELM_SHOW=false
SPACESHIP_ELIXIR_SHOW=false
SPACESHIP_XCODE_SHOW_LOCAL=false
SPACESHIP_SWIFT_SHOW_LOCAL=false
SPACESHIP_GOLANG_SHOW=false
SPACESHIP_PHP_SHOW=false
SPACESHIP_RUST_SHOW=false
SPACESHIP_JULIA_SHOW=false
SPACESHIP_DOCKER_SHOW=false
SPACESHIP_DOCKER_CONTEXT_SHOW=false
SPACESHIP_AWS_SHOW=false
SPACESHIP_CONDA_SHOW=false
SPACESHIP_VENV_SHOW=false
SPACESHIP_PYENV_SHOW=false
SPACESHIP_DOTNET_SHOW=false
SPACESHIP_EMBER_SHOW=false
SPACESHIP_KUBECONTEXT_SHOW=false
SPACESHIP_TERRAFORM_SHOW=false
SPACESHIP_TERRAFORM_SHOW=false
SPACESHIP_VI_MODE_SHOW=false
SPACESHIP_JOBS_SHOW=false

# Spaceship Prompt
autoload -U promptinit; promptinit
prompt spaceship

