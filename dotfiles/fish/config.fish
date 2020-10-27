# we put downloaded binaries to ~/.local/bin, make sure it's added to $PATH
set PATH ~/.local/bin $PATH

# # Add Go executable and GOPATH to PATH
set PATH /usr/local/go/bin $PATH
set PATH ~/go/bin $PATH

# Set up Pyenv
set -x PYENV_ROOT $HOME/.pyenv
set PATH $PYENV_ROOT/bin $PATH
pyenv init - | source


# Use yubikey as MFA for aws-vault
#set -gx AWS_VAULT_KEYCHAIN_NAME login
set -gx AWS_VAULT_PROMPT ykman


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
