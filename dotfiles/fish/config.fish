# Set Vim as default editor
set -gx EDITOR nvim

# Add stuff to PATH
set PATH /opt/homebrew/bin $PATH
set PATH ~/.local/bin $PATH
set PATH ~/.cargo/bin $PATH
set PATH ~/go/bin $PATH
set PATH ~/.krew/bin $PATH
set PATH ~/.poetry/bin $PATH

# Set up Pyenv
pyenv init - | source
status is-interactive; and pyenv init --path | source

# Set XDG_CONFIG_HOME to load k9s config
set -gx XDG_CONFIG_HOME $HOME/.config

# Disable fish greeting
set fish_greeting

# Set aliases
alias ll "lsd -hAl --group-dirs first --date relative --total-size --icon never"
alias lll "lsd -hAl --group-dirs first --date date --icon never"

abbr --erase (abbr --list)
abbr -g kc kubectl
abbr -g kx kubectx
abbr -g kn kubens
abbr -g kt kubetail
abbr -g tf terraform
abbr -g gs git status
abbr -g gg lazygit
abbr -g hh history merge
abbr -g b br
abbr -g bb br -hdps
abbr -g vv nvim .
abbr -g av aws-vault exec

# Enable starship prompt
starship init fish | source
