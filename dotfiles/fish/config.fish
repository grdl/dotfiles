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


# Use yubikey as MFA for aws-vault and use the default "login" keychain
set -gx AWS_VAULT_KEYCHAIN_NAME login
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
alias tf "terraform"


# Enable starship prompt
starship init fish | source


# Load env variables from envrironment file (requires sops)
loadenv $__fish_config_dir/environment
