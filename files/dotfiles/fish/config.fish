# set -gx PATH ~/workspace/go/bin $PATH
# set -gx PATH /snap/bin/ $PATH
# set -gx PATH ~/.npm-global/bin $PATH
# set -gx PATH ~/.pyenv/bin $PATH

# we put downloaded binaries to ~/.local/bin, make sure it's added to $PATH
set -gx PATH ~/.local/bin $PATH

# set flux namespace
set -gx FLUX_FORWARD_NAMESPACE flux

#Disable fish greeting
set fish_greeting

alias lll "ls -la"
alias kc "kubectl"
alias kx "kubectx"
alias kn "kubens"
alias kt "kubetail"
alias mgs "mgitstatus --depth 3 ~/workspace"

# Pyenv support
# status --is-interactive; and pyenv init - | source
# status --is-interactive; and pyenv virtualenv-init - | source
