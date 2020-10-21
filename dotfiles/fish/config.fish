# we put downloaded binaries to ~/.local/bin, make sure it's added to $PATH
set fish_user_paths $PATH ~/.local/bin

# Add Go executable and GOPATH to PATH
set fish_user_paths $PATH /usr/local/go/bin
set fish_user_paths $PATH ~/go/bin
set fish_user_paths $PATH ~/.npm-global/bin

# Set up Pyenv
set PYENV_ROOT $HOME/.pyenv
set fish_user_paths $PATH $PYENV_ROOT/bin
pyenv init - | source


# set flux namespace
set -gx FLUX_FORWARD_NAMESPACE flux


# Disable fish greeting
set fish_greeting

# Set aliases
alias lll "ls -la"
alias ll "ls -l"
alias kc "kubectl"
alias kx "kubectx"
alias kn "kubens"
alias kt "kubetail"


# Enable starship prompt
starship init fish | source
