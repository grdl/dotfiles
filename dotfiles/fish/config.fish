# Add ~/.local/bin to PATH
set PATH ~/.local/bin $PATH

# Add Rust binaries to PATH
set PATH ~/.cargo/bin $PATH

# Add Go binaries to PATH
set PATH ~/go/bin $PATH

# Set up Pyenv
set -x PYENV_ROOT $HOME/.pyenv
set PATH $PYENV_ROOT/bin $PATH
pyenv init - | source
status is-interactive; and pyenv init --path | source

set PATH $HOME/.poetry/bin $PATH

set -gx EDITOR lvim


# Disable fish greeting
set fish_greeting

# Set aliases
alias ll "lsd -hAl --group-dirs first --date relative --total-size --icon never"
alias lll "lsd -hAl --group-dirs first --date date --icon never"
alias kx "kubectx"
alias kn "kubens"
alias kt "kubetail"
alias vim "lvim"

abbr -g kc kubectl
abbr -g tf terraform
abbr -g gs git status
abbr -g gg lazygit
abbr -g hh history merge
abbr -g b br
abbr -g bb br -hdps


# Enable starship prompt
starship init fish | source


# Load env variables from envrironment file (requires sops)
loadenv $__fish_config_dir/environment
