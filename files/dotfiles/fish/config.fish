# we put downloaded binaries to ~/.local/bin, make sure it's added to $PATH
set fish_user_paths $PATH ~/.local/bin 


# set flux namespace
set -gx FLUX_FORWARD_NAMESPACE flux

# Disable fish greeting
set fish_greeting

alias lll "ls -la"
alias kc "kubectl"
alias kx "kubectx"
alias kn "kubens"
alias kt "kubetail"
alias mgs "mgitstatus --depth 3 ~/workspace"

# Enable starship prompt
starship init fish | source

