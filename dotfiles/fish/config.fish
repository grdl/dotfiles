# Set Vim as default editor
set -gx EDITOR nvim

set -gx FZF_DEFAULT_OPTS "--bind 'tab:toggle-up,btab:toggle-down' --cycle"

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

# Set default node version
set -U nvm_default_version v18

# Set aliases
alias ll "lsd -hAl --group-dirs first --date relative --total-size --icon never"
alias lll "lsd -hAl --group-dirs first --date date --icon never"

# Repos switcher
alias rr "cd (fd .git --type d --hidden ~/repositories --exec dirname {} \; | sort -u | fzf --exact) && code ."

alias gpt "sgpt --model=gpt-4o"

abbr --erase (abbr --list)
abbr -g k kubectl
abbr -g kx kubectx
abbr -g kn kubens
abbr -g tf terraform
abbr -g gs git status
abbr -g gg lazygit
abbr -g hh history merge
abbr -g b br
abbr -g bb br -hdps
abbr -g bbb br ~/repositories
abbr -g vv nvim .
abbr -g av aws-vault exec
abbr -g dd databricks

# Enable starship prompt
starship init fish | source

# Enable zoxide (for directory jumping)
zoxide init fish | source

# Enable atuin shell history, but keep default up arrow behavior
if status is-interactive
    atuin init fish --disable-up-arrow | source
end
